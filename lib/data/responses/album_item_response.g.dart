// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumItemResponse _$AlbumItemResponseFromJson(Map<String, dynamic> json) =>
    AlbumItemResponse(
      albumId: json['albumId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$AlbumItemResponseToJson(AlbumItemResponse instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
