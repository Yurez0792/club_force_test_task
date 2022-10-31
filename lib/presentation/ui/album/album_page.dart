import 'package:club_force_test_task/presentation/general/widgets/app_bar_title.dart';
import 'package:club_force_test_task/presentation/ui/album/album_page_body.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const AppBarTitle(),
        ),
        body: const AlbumPageBody(),
      );
}
