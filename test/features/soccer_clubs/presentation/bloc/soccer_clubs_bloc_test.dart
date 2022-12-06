import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:yunet_coding_challenge/core/injection/injection.dart';
import 'package:yunet_coding_challenge/core/network/api_connection_exception.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/bloc/soccer_clubs_bloc.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/repositories/soccer_clubs_repo.dart';

import '../../../../utils/mock/mock_utils.dart';
import '../../../../utils/mock/mock_utils.mocks.dart';

void main() {
  MockUtils.setUpInjectioBloc();

  final soccerClubRepo = MockSoccerClubsRepo();

  setUpAll(() => sl.registerSingleton<SoccerClubsRepo>(soccerClubRepo));

  group('LoadSoccerClubs', () {
    blocTest<SoccerClubsBloc, SoccerClubsState>(
      '''SoccerClubsBloc |
       Add LoadSoccerClubs event |
       Should verify that the LoadSoccerClubs is added.''',
      build: () {
        when(soccerClubRepo.loadSoccerClubs())
            .thenAnswer((_) => Future.value(const Right([])));
        return SoccerClubsBloc();
      },
      act: (bloc) => bloc.add(LoadSoccerClubs()),
      expect: () => [
        const SoccerClubsState(
          loadedState: LoadedState.loaded,
          soccerClubs: [],
        )
      ],
    );

    blocTest<SoccerClubsBloc, SoccerClubsState>(
      '''SoccerClubsBloc |
       Add LoadSoccerClubs event |
       Should verify that the LoadSoccerClubs is added.''',
      build: () {
        when(soccerClubRepo.loadSoccerClubs()).thenAnswer(
          (_) => Future.value(
            const Left(
              ApiConnectionException(
                errorType: ApiConnectionErrorType.clientError,
                statusCode: 403,
                statusMessage: 'Authorization Error.',
              ),
            ),
          ),
        );
        return SoccerClubsBloc();
      },
      act: (bloc) => bloc.add(LoadSoccerClubs()),
      expect: () => [
        const SoccerClubsState(
          loadedState: LoadedState.error,
          error: ApiConnectionException(
            errorType: ApiConnectionErrorType.clientError,
            statusCode: 403,
            statusMessage: 'Authorization Error.',
          ),
        )
      ],
    );
  });
}
