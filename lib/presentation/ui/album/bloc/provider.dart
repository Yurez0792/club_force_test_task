import 'package:club_force_test_task/core/constants/arguments_keys_constants.dart';
import 'package:club_force_test_task/di/get_it.dart';
import 'package:club_force_test_task/domain/use_cases/album/get_album_items_by_id.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumBlocProvider extends StatelessWidget {
  final Widget child;

  const AlbumBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final albumId = arguments[ArgumentsKeysConstants.albumIdKey];

    return BlocProvider(
      create: (context) => AlbumBloc(
        albumId: albumId,
        getAlbumItemsByIdUseCase: locator.get<GetAlbumItemsByIdUseCase>(),
        appLogger: locator.get<AppLogger>(),
      ),
      child: child,
    );
  }
}
