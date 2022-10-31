import 'package:club_force_test_task/data/responses/album_item_response.dart';
import 'package:club_force_test_task/data/responses/album_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'albums_client.g.dart';

@RestApi()
abstract class AlbumsClient {
  factory AlbumsClient(Dio dio, {String baseUrl}) = _AlbumsClient;

  @GET("/albums")
  Future<List<AlbumResponse>> getAlbums();

  @GET("/albums")
  Future<List<AlbumResponse>> getAlbumByTitle(
    @Query("title") String title,
  );

  @GET("/albums/{id}/photos")
  Future<List<AlbumItemResponse>> getAlbumItemsById(
    @Path("id") int id,
  );
}
