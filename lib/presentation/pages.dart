import 'package:club_force_test_task/presentation/ui/album/album_page.dart';
import 'package:club_force_test_task/presentation/ui/album/album_page_wrapper.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/provider.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_wrapper.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/provider.dart';
import 'package:flutter/material.dart';

Widget buildAlbumsPage(final BuildContext context) {
  return const AlbumsBlocProvider(
    child: AlbumsPageWrapper(
      child: AlbumsPage(),
    ),
  );
}

Widget buildAlbumPage(final BuildContext context) {
  return const AlbumBlocProvider(
    child: AlbumPageWrapper(
      child: AlbumPage(),
    ),
  );
}
