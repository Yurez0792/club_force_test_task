import 'package:club_force_test_task/presentation/ui/albums/bloc/model/album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.extentions.dart';
part 'state.freezed.dart';

@freezed
class AlbumsState with _$AlbumsState {
  const factory AlbumsState({
    @Default(false) bool isSearching,
  }) = _AlbumsState;

  const factory AlbumsState.loading({
    @Default(false) bool isSearching,
  }) = AlbumsStateLoading;

  const factory AlbumsState.loaded({
    @Default(false) bool isSearching,
    @Default(<Album>[]) List<Album> albums,
  }) = AlbumsStateLoaded;

  const factory AlbumsState.error({
    @Default(false) bool isSearching,
    required Exception exception,
  }) = AlbumsStateError;
}
