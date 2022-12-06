part of 'soccer_clubs_bloc.dart';

enum LoadedState {
  loading,
  loaded,
  error,
}

class SoccerClubsState extends Equatable {
  const SoccerClubsState({
    this.loadedState = LoadedState.loading,
    this.soccerClubs = const [],
    this.error = const ApiConnectionException(
      errorType: ApiConnectionErrorType.none,
      statusCode: -1,
      statusMessage: '',
    ),
    this.isSortAscending = true,
  });

  final LoadedState loadedState;
  final List<SoccerClubModel> soccerClubs;
  final ApiConnectionException error;
  final bool isSortAscending;

  @override
  List<Object> get props => [
        loadedState,
        soccerClubs,
        error,
        isSortAscending,
      ];

  SoccerClubsState copyWith({
    LoadedState? loadedState,
    List<SoccerClubModel>? soccerClubs,
    ApiConnectionException? error,
    bool? isSortAscending,
  }) {
    return SoccerClubsState(
      loadedState: loadedState ?? this.loadedState,
      soccerClubs: soccerClubs ?? this.soccerClubs,
      error: error ?? this.error,
      isSortAscending: isSortAscending ?? this.isSortAscending,
    );
  }
}
