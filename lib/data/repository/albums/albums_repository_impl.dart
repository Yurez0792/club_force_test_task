import 'package:club_force_test_task/data/data_source/albums/albums_source.dart';
import 'package:club_force_test_task/data/responses/album_item_response.dart';
import 'package:club_force_test_task/data/responses/album_response.dart';
import 'package:club_force_test_task/domain/repository/albums/albums_repository.dart';

class AlbumsRepositoryImpl extends AlbumsRepository {
  final AlbumsDataSource _remoteSource;

  AlbumsRepositoryImpl(this._remoteSource);

  @override
  Future<List<AlbumResponse>> getAlbums() => _remoteSource.getAlbums();

  @override
  Future<List<AlbumResponse>> getAlbumByTitle({
    required String title,
  }) =>
      _remoteSource.getAlbumByTitle(title: title);

  @override
  Future<List<AlbumItemResponse>> getAlbumItemsById({
    required int id,
  }) =>
      _remoteSource.getAlbumItemsById(id: id);
}
