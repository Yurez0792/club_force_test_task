import 'package:club_force_test_task/presentation/ui/albums/albums_page_app_bar_action.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_app_bar_title.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_body.dart';
import 'package:flutter/material.dart';

class AlbumsPage extends StatelessWidget {
  const AlbumsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const AlbumsPageAppBarTitle(),
          actions: const [
            AlbumsPageAppBarAction(),
          ],
        ),
        body: const AlbumsPageBody(),
      );
}
