import 'package:go_router/go_router.dart';

import '../../features/soccer_clubs/models/soccer_club_model.dart';
import '../../features/soccer_clubs/presentation/screens/soccer_club_details.dart';
import '../../features/soccer_clubs/presentation/screens/soccer_clubs.dart';
import 'paths.dart';

GoRouter router({String initialLocation = Paths.soccerClubs}) => GoRouter(
    initialLocation: initialLocation,
    routes: <GoRoute>[
      GoRoute(
        path: Paths.soccerClubs,
        builder: (_, __) {
          return const SoccerClubsScreen();
        },
      ),
      GoRoute(
        path: Paths.soccerClubDetails,
        builder: (_, state) {
          return SoccerClubDetailsScreen(
            soccerClubDetails: state.extra as SoccerClubModel,
          );
        },
      )
    ],
  );