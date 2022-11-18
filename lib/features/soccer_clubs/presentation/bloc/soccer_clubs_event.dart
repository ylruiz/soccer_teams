part of 'soccer_clubs_bloc.dart';

abstract class SoccerClubsEvent extends Equatable {
  const SoccerClubsEvent();

  @override
  List<Object> get props => [];
}

class LoadSoccerClubs extends SoccerClubsEvent {}

class SortSoccerClubsList extends SoccerClubsEvent {}
