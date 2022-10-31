import 'package:club_force_test_task/di/get_it.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_by_title_use_case.dart';
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_use_case.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsBlocProvider extends StatelessWidget {
  final Widget child;

  const AlbumsBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlbumsBloc(
        getAlbumsUseCase: locator.get<GetAlbumsUseCase>(),
        getAlbumsByTitleUseCase: locator.get<GetAlbumsByTitleUseCase>(),
        appLogger: locator.get<AppLogger>(),
      ),
      child: child,
    );
  }
}
