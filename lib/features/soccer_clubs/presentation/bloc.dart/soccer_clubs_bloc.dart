import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/injection/injection.dart';
import '../../models/soccer_club_model.dart';
import '../../repositories/soccer_clubs_repo.dart';

part 'soccer_clubs_event.dart';
part 'soccer_clubs_state.dart';

class SoccerClubsBloc extends Bloc<SoccerClubsEvent, SoccerClubsState> {
  SoccerClubsBloc()
      : super(const SoccerClubsState(loadedState: LoadedState.loading)) {
    on<LoadSoccerClubs>((event, emit) async => emit(await _loadSoccerClubs()));
  }

  Future<SoccerClubsState> _loadSoccerClubs() async {
    final loadedSoccerClubs = await sl<SoccerClubsRepo>().loadSoccerClubs();
    return loadedSoccerClubs.fold(
      (error) => state.copyWith(
        loadedState: LoadedState.error,
        error: error.message,
      ),
      (soccerClubs) => state.copyWith(
        loadedState: LoadedState.loaded,
        soccerClubs: soccerClubs,
      ),
    );
  }
}
