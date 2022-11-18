import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

import 'package:yunet_coding_challenge/core/injection/injection.dart';
import 'package:yunet_coding_challenge/core/network/api_manager.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/bloc/soccer_clubs_bloc.dart';
import 'package:yunet_coding_challenge/features/soccer_clubs/repositories/soccer_clubs_repo.dart';

import 'mock_utils.mocks.dart';

@GenerateMocks([
  SoccerClubsBloc,
  SoccerClubsRepo,
  Dio,
  ApiManager,
])
class MockUtils {
  static void setUpMockedBlocs() {
    sl.registerLazySingleton<SoccerClubsBloc>(() => MockSoccerClubsBloc());
  }

  static void setUpInjectioBloc() {
    sl.registerLazySingleton<SoccerClubsBloc>(() => SoccerClubsBloc());
  }
}
