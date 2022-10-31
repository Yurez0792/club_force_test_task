import 'package:club_force_test_task/core/constants/arguments_keys_constants.dart';
import 'package:club_force_test_task/core/constants/navigation_constants.dart';
import 'package:club_force_test_task/core/constants/size_constants.dart';
import 'package:club_force_test_task/extensions/context/bloc_ext.dart';
import 'package:club_force_test_task/extensions/context/screen_ext.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/albums/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlbumsPageBody extends StatelessWidget {
  const AlbumsPageBody({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AlbumsBloc, AlbumsState>(
        bloc: context.albumsBloc,
        buildWhen: (prev, next) => next != prev && next is AlbumsStateLoaded,
        builder: (_, state) {
          if (state is AlbumsStateLoaded) {
            final albums = state.albums;
            final isAlbumsNotEmpty = albums.isNotEmpty;

            return isAlbumsNotEmpty
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.blueGrey.shade50,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            NavigationConstants.albumPage,
                            arguments: {
                              ArgumentsKeysConstants.albumIdKey:
                                  albums[index].id,
                            },
                          );
                        },
                        title: Text(
                          albums[index].title,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => Divider(
                      height:
                          SizeConstants.separatorHeight * context.screen.scale,
                      color: Colors.grey,
                    ),
                    itemCount: albums.length,
                  )
                : Center(
                    child: Text(AppLocalizations.of(context)?.noAlbums ?? ''),
                  );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
}
