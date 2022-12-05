import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/injection/injection.dart';
import 'core/navigation/router.dart';
import 'features/soccer_clubs/presentation/bloc/soccer_clubs_bloc.dart';

void main() async {
  await setUpServiceLocator();
  runApp(
    BlocProvider<SoccerClubsBloc>.value(
      value: sl<SoccerClubsBloc>()..add(LoadSoccerClubs()),
      child: const SoccerClubsApp(),
    ),
  );
}

class SoccerClubsApp extends StatelessWidget {
  const SoccerClubsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Soccer Clubs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xff01c13b),
        ),
      ),
      routerConfig: router(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('de', ''),
      supportedLocales: const [
        Locale('de', ''),
        Locale('en', ''),
        Locale('pl', ''),
      ],
    );
  }
}
