import 'package:club_force_test_task/data/data_source/albums/remote_albums_source.dart';
import 'package:club_force_test_task/data/repository/albums/albums_repository_impl.dart';
import 'package:club_force_test_task/data/service/albums/albums_client.dart';
import 'package:club_force_test_task/data/service/albums/api.dart';
import 'package:club_force_test_task/data/service/albums/api_impl.dart';
import 'package:club_force_test_task/domain/mappers/albums/album_items_mapper.dart';
import 'package:club_force_test_task/domain/mappers/albums/albums_mapper.dart';
import 'package:club_force_test_task/domain/use_cases/album/get_album_items_by_id.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_by_title_use_case.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_use_case.dart';
import 'package:club_force_test_task/presentation/general/screen.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

const _apiBaseUrlKey = 'API_BASE_URL';

void setup() {
  locator.registerLazySingleton<AppLogger>(() => AppLogger());

  locator.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: dotenv.env[_apiBaseUrlKey] ?? '',
      ),
    ),
  );
  locator.registerLazySingleton<AlbumsClient>(
    () => AlbumsClient(
      locator.get<Dio>(),
    ),
  );

  locator.registerLazySingleton<AlbumsApi>(
    () => AlbumsApiImpl(
      appLogger: locator.get<AppLogger>(),
      albumsClient: locator.get<AlbumsClient>(),
    ),
  );

  locator.registerLazySingleton<RemoteAlbumsDataSource>(
    () => RemoteAlbumsDataSource(
      locator.get<AlbumsApi>(),
    ),
  );

  locator.registerLazySingleton<AlbumsRepositoryImpl>(
    () => AlbumsRepositoryImpl(
      locator.get<RemoteAlbumsDataSource>(),
    ),
  );

  locator.registerLazySingleton<AlbumsMapper>(
    () => AlbumsMapper(),
  );
  locator.registerLazySingleton<AlbumItemsMapper>(
    () => AlbumItemsMapper(),
  );

  locator.registerLazySingleton<GetAlbumsUseCase>(
    () => GetAlbumsUseCase(
      repository: locator.get<AlbumsRepositoryImpl>(),
      mapper: locator.get<AlbumsMapper>(),
      appLogger: locator.get<AppLogger>(),
    ),
  );
  locator.registerLazySingleton<GetAlbumsByTitleUseCase>(
    () => GetAlbumsByTitleUseCase(
      repository: locator.get<AlbumsRepositoryImpl>(),
      mapper: locator.get<AlbumsMapper>(),
      appLogger: locator.get<AppLogger>(),
    ),
  );
  locator.registerLazySingleton<GetAlbumItemsByIdUseCase>(
    () => GetAlbumItemsByIdUseCase(
      repository: locator.get<AlbumsRepositoryImpl>(),
      mapper: locator.get<AlbumItemsMapper>(),
      appLogger: locator.get<AppLogger>(),
    ),
  );

  locator.registerLazySingleton<Screen>(
    () => Screen(),
  );
}
