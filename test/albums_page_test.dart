// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:club_force_test_task/core/constants/navigation_constants.dart';
import 'package:club_force_test_task/domain/entity/album_entity.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_by_title_use_case.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_use_case.dart';
import 'package:club_force_test_task/presentation/general/widgets/search_field.dart';
import 'package:club_force_test_task/presentation/pages.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_app_bar_action.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_app_bar_title.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_body.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_wrapper.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/model/album.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'albums_page_test.mocks.dart';

@GenerateMocks([
  GetAlbumsUseCase,
  GetAlbumsByTitleUseCase,
])
void main() {
  const album = 'album';

  late MockGetAlbumsUseCase getAlbumsUseCase;
  late MockGetAlbumsByTitleUseCase getAlbumsByTitleUseCase;
  late AlbumsBloc albumsBloc;
  late Widget albumsPage;

  final AppLogger appLogger = AppLogger();
  final List<Album> albumList = [
    Album(userId: 0, id: 0, title: 'test'),
    Album(userId: 1, id: 1, title: 'test2'),
  ];

  group('test albums page', () {
    setUp(() {
      getAlbumsUseCase = MockGetAlbumsUseCase();
      getAlbumsByTitleUseCase = MockGetAlbumsByTitleUseCase();

      when(getAlbumsUseCase.call())
          .thenAnswer((realInvocation) async => const Right(<AlbumEntity>[]));
      when(getAlbumsByTitleUseCase.call(album))
          .thenAnswer((realInvocation) async => const Right(<AlbumEntity>[]));

      albumsBloc = AlbumsBloc(
        getAlbumsUseCase: getAlbumsUseCase,
        getAlbumsByTitleUseCase: getAlbumsByTitleUseCase,
        appLogger: appLogger,
      );

      albumsPage = MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(
          routes: const {
            NavigationConstants.albumsPage: buildAlbumsPage,
            NavigationConstants.albumPage: buildAlbumPage,
          },
          home: BlocProvider(
            create: (context) => albumsBloc,
            child: const AlbumsPageWrapper(
              child: AlbumsPage(),
            ),
          ),
        ),
      );
    });

    testWidgets('albums page - all main widgets exist',
        (WidgetTester tester) async {
      await tester.pumpWidget(albumsPage);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(find.byType(AlbumsPageAppBarTitle), findsOneWidget);
      expect(find.byType(AlbumsPageAppBarAction), findsOneWidget);
      expect(find.byType(AlbumsPageBody), findsOneWidget);
    });

    testWidgets(
        'albums page - search field exist, when bloc state isSearching is true',
        (WidgetTester tester) async {
      albumsBloc.emit(
        albumsBloc.state.copyWith.call(isSearching: true),
      );
      await tester.pumpWidget(albumsPage);
      await tester.pumpAndSettle(
        const Duration(seconds: 1),
      );

      await tester.tap(
        find.byIcon(Icons.clear),
      );

      expect(find.byType(SearchField), findsOneWidget);
    });

    testWidgets(
        'albums page - album tiles length equals state albums length and progress is invisible',
        (WidgetTester tester) async {
      albumsBloc.emit(
        AlbumsStateLoaded(
          albums: albumList,
        ),
      );
      await tester.pumpWidget(albumsPage);
      await tester.pumpAndSettle(
        const Duration(seconds: 1),
      );

      await tester.tap(
        find.byType(ListTile).first,
      );

      expect(
        (tester
            .widgetList(
              find.byType(ListTile),
            )
            .length),
        albumList.length,
      );
      expect(
        find.byType(CircularProgressIndicator),
        findsNothing,
      );
    });

    testWidgets(
        'albums page - progress is visible, when bloc state is AlbumsStateLoading',
        (WidgetTester tester) async {
      albumsBloc.emit(
        const AlbumsStateLoading(),
      );
      await tester.pumpWidget(albumsPage);

      expect(
        find.byType(CircularProgressIndicator),
        findsOneWidget,
      );
    });

    testWidgets('albums page - search field is visible and filled',
        (WidgetTester tester) async {
      albumsBloc.emit(
        albumsBloc.state.copyWith.call(isSearching: true),
      );
      await tester.pumpWidget(albumsPage);
      await tester.enterText(find.byType(TextField), album);
      await tester.pumpAndSettle(
        const Duration(seconds: 1),
      );

      expect(
        find.text(album),
        findsOneWidget,
      );
    });
  });
}
