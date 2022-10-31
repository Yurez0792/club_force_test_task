import 'package:club_force_test_task/data/data_source/albums/albums_source.dart';
import 'package:club_force_test_task/data/responses/album_item_response.dart';
import 'package:club_force_test_task/data/responses/album_response.dart';
import 'package:club_force_test_task/data/service/albums/api.dart';

class RemoteAlbumsDataSource implements AlbumsDataSource {
  final AlbumsApi _api;

  RemoteAlbumsDataSource(this._api);

  @override
  Future<List<AlbumResponse>> getAlbums() => _api.getAlbums();

  @override
  Future<List<AlbumResponse>> getAlbumByTitle({
    required String title,
  }) =>
      _api.getAlbumByTitle(title: title);

  @override
  Future<List<AlbumItemResponse>> getAlbumItemsById({
    required int id,
  }) =>
      _api.getAlbumItemsById(id: id);
}
