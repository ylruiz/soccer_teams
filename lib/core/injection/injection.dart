import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/soccer_clubs/presentation/bloc/soccer_clubs_bloc.dart';
import '../../features/soccer_clubs/repositories/soccer_clubs_repo.dart';
import '../network/api_manager.dart';

final sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  sl.registerLazySingleton<SoccerClubsBloc>(
    () => SoccerClubsBloc(),
  );
  sl.registerLazySingleton<SoccerClubsRepo>(
    () => SoccerClubsRepo(sl<ApiManager>()),
  );
  sl.registerLazySingleton<ApiManager>(
    () => ApiManager(sl()),
  );
  sl.registerLazySingleton(() => Dio());
}
