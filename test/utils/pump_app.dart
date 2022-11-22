import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yunet_coding_challenge/core/injection/injection.dart';
import 'package:yunet_coding_challenge/core/navigation/router.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/bloc/soccer_clubs_bloc.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    String location,
    Widget Function(Widget child) builder,
  ) {
    return pumpWidget(
      builder(
        BlocProvider<SoccerClubsBloc>.value(
          value: sl<SoccerClubsBloc>(),
          child: MaterialApp.router(
            routerConfig: router(initialLocation: location),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          ),
        ),
      ),
    );
  }
}
