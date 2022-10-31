import 'package:club_force_test_task/core/constants/size_constants.dart';
import 'package:club_force_test_task/extensions/context/bloc_ext.dart';
import 'package:club_force_test_task/extensions/context/screen_ext.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/bloc.dart';
import 'package:club_force_test_task/presentation/ui/album/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlbumPageBody extends StatelessWidget {
  const AlbumPageBody({super.key});

  static const String _imageFormat = '.jpg';
  static const double _leadingSize = 60.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumBloc, AlbumState>(
      bloc: context.albumBloc,
      buildWhen: (prev, next) => next != prev && next is AlbumStateLoaded,
      builder: (_, state) {
        if (state is AlbumStateLoaded) {
          final albumItems = state.albumItems;
          final isAlbumItemsNotEmpty = albumItems.isNotEmpty;

          return isAlbumItemsNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: SizedBox(
                        width: _leadingSize,
                        height: _leadingSize,
                        child: Image.network(
                            '${albumItems[index].thumbnailUrl}$_imageFormat'),
                      ),
                      tileColor: Colors.blueGrey.shade50,
                      title: Text(
                        albumItems[index].title,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    height:
                        SizeConstants.separatorHeight * context.screen.scale,
                    color: Colors.grey,
                  ),
                  itemCount: albumItems.length,
                )
              : Center(
                  child: Text(AppLocalizations.of(context)?.noAlbumItems ?? ''),
                );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
