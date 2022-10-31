import 'package:club_force_test_task/presentation/ui/albums/albums_page_progress.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:club_force_test_task/presentation/utils/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsPageWrapper extends StatelessWidget {
  final Widget child;

  const AlbumsPageWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocListener<AlbumsBloc, AlbumsState>(
        listenWhen: (prev, next) => next is AlbumsStateError,
        listener: (context, state) => _showSnackBar(
          context,
          (state as AlbumsStateError).exception.toString(),
        ),
        child: Stack(
          children: [
            child,
            const AlbumsPageProgress(),
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
