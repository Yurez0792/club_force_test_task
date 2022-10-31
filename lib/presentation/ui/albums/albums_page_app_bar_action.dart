import 'package:club_force_test_task/extensions/context/bloc_ext.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsPageAppBarAction extends StatelessWidget {
  const AlbumsPageAppBarAction({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        icon: BlocBuilder<AlbumsBloc, AlbumsState>(
          bloc: context.albumsBloc,
          buildWhen: (prev, next) => next.isSearching != prev.isSearching,
          builder: (_, state) => state.isSearching
              ? const Icon(Icons.clear)
              : const Icon(Icons.search),
        ),
        onPressed: () {
          context.albumsBloc.onSearchActionTapped();
        },
      );
}
