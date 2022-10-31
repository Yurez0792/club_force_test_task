class AlbumItemEntity {
  int? albumId;
  int? id;
  String title;
  String? url;
  String thumbnailUrl;

  AlbumItemEntity({
    this.albumId,
    this.id,
    required this.title,
    this.url,
    required this.thumbnailUrl,
  });
}
