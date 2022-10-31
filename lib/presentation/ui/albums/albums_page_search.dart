import 'package:club_force_test_task/extensions/context/bloc_ext.dart';
import 'package:club_force_test_task/presentation/general/widgets/search_field.dart';
import 'package:flutter/material.dart';

class AlbumsPageSearch extends StatelessWidget {
  const AlbumsPageSearch({super.key});

  @override
  Widget build(BuildContext context) => SearchField(
        onInputChanged: (value) {
          context.albumsBloc.onSearch(value);
        },
      );
}
