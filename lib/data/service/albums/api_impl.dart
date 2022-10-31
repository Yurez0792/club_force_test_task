import 'package:club_force_test_task/data/responses/album_item_response.dart';
import 'package:club_force_test_task/data/responses/album_response.dart';
import 'package:club_force_test_task/data/service/albums/albums_client.dart';
import 'package:club_force_test_task/data/service/albums/api.dart';
import 'package:club_force_test_task/presentation/utils/errors.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';

class AlbumsApiImpl extends AlbumsApi {
  final AppLogger appLogger;
  final AlbumsClient albumsClient;

  AlbumsApiImpl({
    required this.appLogger,
    required this.albumsClient,
  });

  @override
  Future<List<AlbumResponse>> getAlbums() async {
    appLogger.logDebug(message: 'AlbumsApiImpl getAlbums');
    try {
      return await albumsClient.getAlbums();
    } catch (error, stackTrace) {
      appLogger.logError(
          message: 'AlbumsApiImpl getAlbums',
          error: error,
          stackTrace: stackTrace);
      if (error is DataParsingException) {
        rethrow;
      }
      throw ServerException();
    }
  }

  @override
  Future<List<AlbumResponse>> getAlbumByTitle({
    required String title,
  }) async {
    appLogger.logDebug(message: 'AlbumsApiImpl getAlbumByTitle');
    try {
      return await albumsClient.getAlbumByTitle(title);
    } catch (error, stackTrace) {
      appLogger.logError(
          message: 'AlbumsApiImpl getAlbumByTitle',
          error: error,
          stackTrace: stackTrace);
      if (error is DataParsingException) {
        rethrow;
      }
      throw ServerException();
    }
  }

  @override
  Future<List<AlbumItemResponse>> getAlbumItemsById({
    required int id,
  }) async {
    appLogger.logDebug(message: 'AlbumsApiImpl getAlbumItemsById');
    try {
      return await albumsClient.getAlbumItemsById(id);
    } catch (error, stackTrace) {
      appLogger.logError(
          message: 'AlbumsApiImpl getAlbumItemsById',
          error: error,
          stackTrace: stackTrace);
      if (error is DataParsingException) {
        rethrow;
      }
      throw ServerException();
    }
  }
}
