import 'package:club_force_test_task/presentation/utils/errors.dart';
import 'package:json_annotation/json_annotation.dart';

part 'album_item_response.g.dart';

@JsonSerializable()
class AlbumItemResponse {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  AlbumItemResponse({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory AlbumItemResponse.fromJson(Map<String, dynamic> json) {
    try {
      return _$AlbumItemResponseFromJson(json);
    } catch (error) {
      throw DataParsingException();
    }
  }

  Map<String, dynamic> toJson() => _$AlbumItemResponseToJson(this);
}
