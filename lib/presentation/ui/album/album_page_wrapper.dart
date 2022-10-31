import 'package:club_force_test_task/presentation/ui/album/album_page_progress.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/state/state.dart';
import 'package:club_force_test_task/presentation/utils/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumPageWrapper extends StatelessWidget {
  final Widget child;

  const AlbumPageWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocListener<AlbumBloc, AlbumState>(
        listenWhen: (prev, next) => next is AlbumStateError,
        listener: (context, state) => _showSnackBar(
          context,
          (state as AlbumStateError).exception.toString(),
        ),
        child: Stack(
          children: [
            child,
            const AlbumPageProgress(),
          ],
        ),
      );

  //TODO: Need to implement different types of SnackBars with different styles depending on case
  void _showSnackBar(
    final BuildContext context,
    final String message,
  ) =>
      SnackBarHelper.showTypedSnackBar(
        context,
        message,
      );
}
