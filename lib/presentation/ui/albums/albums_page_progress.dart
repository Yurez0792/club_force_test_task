import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsPageProgress extends StatelessWidget {
  const AlbumsPageProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<AlbumsBloc, AlbumsState>(
        builder: (context, state) => Visibility(
          visible: _isLoading(state),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );

  bool _isLoading(final AlbumsState state) =>
      state is AlbumsStateLoading && state is! AlbumsStateError;
}
