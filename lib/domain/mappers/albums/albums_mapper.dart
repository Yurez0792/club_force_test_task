import 'package:club_force_test_task/data/responses/album_response.dart';
import 'package:club_force_test_task/domain/entity/album_entity.dart';
import 'package:club_force_test_task/domain/mappers/mapper.dart';
import 'package:club_force_test_task/presentation/utils/errors.dart';

class AlbumsMapper extends Mapper<List<AlbumResponse>, List<AlbumEntity>> {
  @override
  List<AlbumEntity> map(final List<AlbumResponse> response) {
    try {
      return response
          .map(
            (album) => AlbumEntity(
              userId: album.userId,
              id: album.id,
              title: album.title ?? '',
            ),
          )
          .toList();
    } catch (error) {
      throw DataParsingException();
    }
  }
}
