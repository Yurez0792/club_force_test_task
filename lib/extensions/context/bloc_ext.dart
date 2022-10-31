import 'package:club_force_test_task/presentation/ui/album/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocExt on BuildContext {
  AlbumsBloc get albumsBloc => read<AlbumsBloc>();

  AlbumBloc get albumBloc => read<AlbumBloc>();
}
