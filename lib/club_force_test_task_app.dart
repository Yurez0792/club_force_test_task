import 'package:club_force_test_task/core/constants/navigation_constants.dart';
import 'package:club_force_test_task/presentation/general/theme.dart';
import 'package:club_force_test_task/presentation/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ClubForceTestTaskApp extends StatelessWidget {
  const ClubForceTestTaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: kTheme,
        title: AppLocalizations.of(context)?.appTitle ?? '',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
        ],
        initialRoute: NavigationConstants.albumsPage,
        routes: const {
          NavigationConstants.albumsPage: buildAlbumsPage,
          NavigationConstants.albumPage: buildAlbumPage,
        },
      );
}
