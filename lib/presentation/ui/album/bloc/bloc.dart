import 'dart:async';

import 'package:club_force_test_task/domain/entity/album_item_entity.dart';
import 'package:club_force_test_task/domain/use_cases/album/get_album_items_by_id.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/model/album_item.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/state/state.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumBloc extends Cubit<AlbumState> {
  final GetAlbumItemsByIdUseCase getAlbumItemsByIdUseCase;
  final AppLogger appLogger;
  final int albumId;

  AlbumBloc({
    required this.albumId,
    required this.getAlbumItemsByIdUseCase,
    required this.appLogger,
  }) : super(const AlbumState.loading()) {
    _getAlbumItems();
  }

  // TODO: Need to implement connection checking
  Future<void> _getAlbumItems() async {
    appLogger.logDebug(message: 'AlbumBloc getAlbumItems');

    final albumItems = await getAlbumItemsByIdUseCase(albumId);
    albumItems.fold(
      (left) => emit(
        state.toError(exception: left.exception),
      ),
      (right) => emit(
        state.toLoaded(
          albumItems: right.toAlbumItems(),
        ),
      ),
    );
  }
}

extension _AlbumItems on List<AlbumItemEntity> {
  List<AlbumItem> toAlbumItems() => map(
        (entity) => AlbumItem(
          title: entity.title,
          thumbnailUrl: entity.thumbnailUrl,
        ),
      ).toList();
}
