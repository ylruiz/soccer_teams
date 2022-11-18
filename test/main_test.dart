import 'package:flutter_test/flutter_test.dart';
import 'package:yunet_coding_challenge/core/injection/injection.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/bloc.dart/soccer_clubs_bloc.dart';

import 'utils/mock/mock_utils.dart';

void main() {
  MockUtils.setUpInjectioBloc();

  setUpAll(() {
    final soccerClubsBloc = sl<SoccerClubsBloc>();
    soccerClubsBloc.emit(const SoccerClubsState());
  });

  testWidgets(
    'Render SoccerClubsScreen via Router',
    (tester) async {},
  );
}
