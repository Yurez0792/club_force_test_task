import 'dart:async';

import 'package:club_force_test_task/domain/entity/album_entity.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_by_title_use_case.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_use_case.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/model/album.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:club_force_test_task/presentation/utils/errors.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsBloc extends Cubit<AlbumsState> {
  static const int _searchTimerSeconds = 1;

  final GetAlbumsUseCase getAlbumsUseCase;
  final GetAlbumsByTitleUseCase getAlbumsByTitleUseCase;
  final AppLogger appLogger;

  Timer? _searchTimer;

  AlbumsBloc({
    required this.getAlbumsUseCase,
    required this.getAlbumsByTitleUseCase,
    required this.appLogger,
  }) : super(const AlbumsState.loading()) {
    _getAlbums();
  }

  void onSearchActionTapped() {
    appLogger.logDebug(message: 'AlbumsBloc onSearchTapped');

    final isSearching = !state.isSearching;
    if (!isSearching) {
      _getAlbums();
    }

    emit(
      state.copyWith.call(
        isSearching: isSearching,
      ),
    );
  }

  void onSearch(final String search) {
    appLogger.logDebug(message: 'AlbumsBloc onSearch: $search');

    _searchTimer?.cancel();

    emit(
      state.toLoading(),
    );

    _searchTimer =
        Timer(const Duration(seconds: _searchTimerSeconds), () async {
      if (search.isEmpty) {
        _getAlbums();
      } else {
        final albums = await getAlbumsByTitleUseCase(search);
        _onAlbums(albums);
      }
    });
  }

  // TODO: Need to implement connection checking
  Future<void> _getAlbums() async {
    appLogger.logDebug(message: 'AlbumsBloc getAlbums');

    final albums = await getAlbumsUseCase();
    _onAlbums(albums);
  }

  void _onAlbums(final Either<Failure, List<AlbumEntity>> albums) =>
      albums.fold(
        (left) => emit(
          state.toError(exception: left.exception),
        ),
        (right) => emit(
          state.toLoaded(
            albums: right.toAlbums(),
          ),
        ),
      );
}

extension _Albums on List<AlbumEntity> {
  List<Album> toAlbums() => map(
        (entity) => Album(
          userId: entity.userId,
          id: entity.id,
          title: entity.title,
        ),
      ).toList();
}
