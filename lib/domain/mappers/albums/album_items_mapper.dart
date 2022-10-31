import 'package:club_force_test_task/data/responses/album_item_response.dart';
import 'package:club_force_test_task/domain/entity/album_item_entity.dart';
import 'package:club_force_test_task/domain/mappers/mapper.dart';
import 'package:club_force_test_task/presentation/utils/errors.dart';

class AlbumItemsMapper
    extends Mapper<List<AlbumItemResponse>, List<AlbumItemEntity>> {
  @override
  List<AlbumItemEntity> map(final List<AlbumItemResponse> response) {
    try {
      return response
          .map(
            (albumItem) => AlbumItemEntity(
              albumId: albumItem.albumId,
              id: albumItem.id,
              title: albumItem.title ?? '',
              url: albumItem.url,
              thumbnailUrl: albumItem.thumbnailUrl ?? '',
            ),
          )
          .toList();
    } catch (error) {
      throw DataParsingException();
    }
  }
}
