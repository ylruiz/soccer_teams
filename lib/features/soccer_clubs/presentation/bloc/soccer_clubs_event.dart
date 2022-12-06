part of 'soccer_clubs_bloc.dart';

abstract class SoccerClubsEvent {
  const SoccerClubsEvent();
}

class LoadSoccerClubs extends SoccerClubsEvent {}

class SortSoccerClubsList extends SoccerClubsEvent {}
