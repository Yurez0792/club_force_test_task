import 'package:club_force_test_task/presentation/ui/album/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumPageProgress extends StatelessWidget {
  const AlbumPageProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<AlbumBloc, AlbumState>(
        builder: (context, state) => Visibility(
          visible: _isLoading(state),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );

  bool _isLoading(final AlbumState state) =>
      state is AlbumStateLoading && state is! AlbumStateError;
}
