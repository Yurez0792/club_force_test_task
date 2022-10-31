part of 'state.dart';

extension AlbumsStateExtantion on AlbumsState {
  AlbumsState toLoading({
    bool? isSearching,
  }) =>
      AlbumsState.loading(
        isSearching: isSearching ?? this.isSearching,
      );

  AlbumsState toLoaded({
    bool? isSearching,
    List<Album>? albums,
  }) =>
      AlbumsState.loaded(
        isSearching: isSearching ?? this.isSearching,
        albums: albums ?? [],
      );

  AlbumsState toError({
    bool? isSearching,
    required Exception exception,
  }) =>
      AlbumsState.error(
        isSearching: isSearching ?? this.isSearching,
        exception: exception,
      );
}
