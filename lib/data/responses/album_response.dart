import 'package:club_force_test_task/presentation/utils/errors.dart';
import 'package:json_annotation/json_annotation.dart';

part 'album_response.g.dart';

@JsonSerializable()
class AlbumResponse {
  int? userId;
  int? id;
  String? title;

  AlbumResponse({
    this.userId,
    this.id,
    this.title,
  });

  factory AlbumResponse.fromJson(Map<String, dynamic> json) {
    try {
      return _$AlbumResponseFromJson(json);
    } catch (error) {
      throw DataParsingException();
    }
  }

  Map<String, dynamic> toJson() => _$AlbumResponseToJson(this);
}
