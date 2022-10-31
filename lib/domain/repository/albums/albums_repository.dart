import 'package:club_force_test_task/data/responses/album_item_response.dart';
import 'package:club_force_test_task/data/responses/album_response.dart';

abstract class AlbumsRepository {
  Future<List<AlbumResponse>> getAlbums();

  Future<List<AlbumResponse>> getAlbumByTitle({
    required String title,
  });

  Future<List<AlbumItemResponse>> getAlbumItemsById({
    required int id,
  });
}
