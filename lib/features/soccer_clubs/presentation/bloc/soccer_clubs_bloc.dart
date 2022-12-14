import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/injection/injection.dart';
import '../../../../core/network/api_connection_exception.dart';
import '../../models/soccer_club_model.dart';
import '../../repositories/soccer_clubs_repo.dart';

part 'soccer_clubs_event.dart';
part 'soccer_clubs_state.dart';

/// [SoccerClubsBloc] manages the state related to
/// [SoccerClubsScreen].
///
/// See also:
///   * [SoccerClubsRepo], which acts as intermediary between
///     [SoccerClubsBloc] and [ApiManager].
class SoccerClubsBloc extends Bloc<SoccerClubsEvent, SoccerClubsState> {
  SoccerClubsBloc() : super(const SoccerClubsState()) {
    on<LoadSoccerClubs>((_, emit) async {
      if(state.loadedState == LoadedState.error) {
        emit(const SoccerClubsState());
      }
      emit(await _loadSoccerClubs());
    });
    on<SortSoccerClubsList>((_, emit) => emit(_sortSoccerClubs()));
  }

  Future<SoccerClubsState> _loadSoccerClubs() async {
    final loadedSoccerClubs = await sl<SoccerClubsRepo>().loadSoccerClubs();
    return loadedSoccerClubs.fold(
      (error) => state.copyWith(
        loadedState: LoadedState.error,
        error: error,
      ),
      (soccerClubs) => state.copyWith(
        loadedState: LoadedState.loaded,
        soccerClubs: soccerClubs,
      ),
    );
  }

  SoccerClubsState _sortSoccerClubs() {
    final sortedSoccerClubsByValue = List.of(state.soccerClubs);
    final isSortAscending = state.isSortAscending;

    if (isSortAscending) {
      sortedSoccerClubsByValue.sort((a, b) => b.value.compareTo(a.value));
    } else {
      sortedSoccerClubsByValue.sort((a, b) => a.name.compareTo(b.name));
    }

    return state.copyWith(
      soccerClubs: sortedSoccerClubsByValue,
      isSortAscending: !isSortAscending,
    );
  }
}
