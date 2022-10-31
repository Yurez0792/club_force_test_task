import 'package:club_force_test_task/extensions/context/bloc_ext.dart';
import 'package:club_force_test_task/presentation/general/widgets/app_bar_title.dart';
import 'package:club_force_test_task/presentation/ui/albums/albums_page_search.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsPageAppBarTitle extends StatelessWidget {
  const AlbumsPageAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AlbumsBloc, AlbumsState>(
        bloc: context.albumsBloc,
        buildWhen: (prev, next) => next.isSearching != prev.isSearching,
        builder: (_, state) =>
            state.isSearching ? const AlbumsPageSearch() : const AppBarTitle(),
      );
}
