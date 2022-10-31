import 'package:club_force_test_task/presentation/ui/album/bloc/model/album_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.extentions.dart';
part 'state.freezed.dart';

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState() = _AlbumState;

  const factory AlbumState.loading() = AlbumStateLoading;

  const factory AlbumState.loaded({
    @Default(<AlbumItem>[]) List<AlbumItem> albumItems,
  }) = AlbumStateLoaded;

  const factory AlbumState.error({
    required Exception exception,
  }) = AlbumStateError;
}
