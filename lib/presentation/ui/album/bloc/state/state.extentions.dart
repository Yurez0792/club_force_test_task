part of 'state.dart';

extension AlbumStateExtantion on AlbumState {
  AlbumState toLoading() => const AlbumState.loading();

  AlbumState toLoaded({
    List<AlbumItem>? albumItems,
  }) =>
      AlbumState.loaded(
        albumItems: albumItems ?? [],
      );

  AlbumState toError({
    required Exception exception,
  }) =>
      AlbumState.error(
        exception: exception,
      );
}
