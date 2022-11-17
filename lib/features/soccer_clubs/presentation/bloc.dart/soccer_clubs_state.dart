part of 'soccer_clubs_bloc.dart';

enum LoadedState {
  loading,
  loaded,
  error,
}

class SoccerClubsState extends Equatable {
  const SoccerClubsState({
    required this.loadedState,
    this.soccerClubs = const [],
    this.error = '',
    this.isSortAscending = true,
  });

  final LoadedState loadedState;
  final List<SoccerClubModel> soccerClubs;
  final String error;
  final bool isSortAscending;

  @override
  List<Object> get props => [
        loadedState,
        soccerClubs,
        error,
      ];

  SoccerClubsState copyWith({
    LoadedState? loadedState,
    List<SoccerClubModel>? soccerClubs,
    String? error,
  }) {
    return SoccerClubsState(
      loadedState: loadedState ?? this.loadedState,
      soccerClubs: soccerClubs ?? this.soccerClubs,
      error: error ?? this.error,
    );
  }
}
