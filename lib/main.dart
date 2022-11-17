import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import 'core/injection/injection.dart';
import 'core/paths.dart';
import 'features/soccer_clubs/models/soccer_club_model.dart';
import 'features/soccer_clubs/presentation/bloc.dart/soccer_clubs_bloc.dart';
import 'features/soccer_clubs/presentation/screens/soccer_club_details.dart';
import 'features/soccer_clubs/presentation/screens/soccer_clubs.dart';

void main() async {
  await setUpServiceLocator();
  runApp(
    BlocProvider<SoccerClubsBloc>.value(
      value: sl<SoccerClubsBloc>()..add(LoadSoccerClubs()),
      child: SoccerClubsApp(),
    ),
  );
}

class SoccerClubsApp extends StatelessWidget {
  SoccerClubsApp({super.key});

  final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: Paths.soccerClubs,
        builder: (_, __) {
          return const SoccerClubsScreen();
        },
      ),
      GoRoute(
        path: Paths.soccerClubDetails,
        builder: (_, state) {
          return SoccerClubDetailsScreen(
            soccerClubDetails: state.extra as SoccerClubModel,
          );
        },
      )
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Soccer Clubs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          // The Color(0x0001c13b) is not working as expected.
          primary: Colors.green,
          
        ),
      ),
      routerConfig: _router,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('de', ''), 
        Locale('en', ''),
        Locale('pl', ''),
      ],
    );
  }
}
