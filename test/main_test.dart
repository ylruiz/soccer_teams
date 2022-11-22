import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yunet_coding_challenge/core/injection/injection.dart';
import 'package:yunet_coding_challenge/core/navigation/paths.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/bloc/soccer_clubs_bloc.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/screens/soccer_club_details.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/screens/soccer_clubs.dart';

import 'utils/mock/mock_utils.dart';
import 'utils/pump_app.dart';

void main() {
  MockUtils.setUpInjectioBloc();

  setUpAll(() {
    final soccerClubsBloc = sl<SoccerClubsBloc>();
    soccerClubsBloc.emit(const SoccerClubsState());
  });

  testWidgets(
    'Render SoccerClubsScreen via Router',
    (tester) async {
      await tester.pumpApp(
        Paths.soccerClubs,
        (child) => child,
      );
      expect(find.byType(SoccerClubsScreen), findsOneWidget);
      expect(find.byType(SortingIconButton), findsOneWidget);
      expect(find.byType(SoccerClubDetailsScreen), findsNothing);
      expect(find.byIcon(Icons.arrow_back), findsNothing);
    },
  );
}
