import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/injection/injection.dart';
import '../../../../core/navigation/paths.dart';
import '../../../../core/network/api_connection_exception.dart';
import '../../../../core/widgets/tag_styled_text.dart';
import '../../models/soccer_club_model.dart';
import '../bloc/soccer_clubs_bloc.dart';
import '../widgets/soccer_club_image.dart';

part '../widgets/sorting_icon_button.dart';
part '../widgets/loading_progress.dart';
part '../widgets/soccer_clubs_list.dart';
part '../widgets/soccer_clubs_error_feedback.dart';

class SoccerClubsScreen extends StatelessWidget {
  const SoccerClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loca = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(loca.allAboutClubs),
        actions: const [SortingIconButton()],
      ),
      body: BlocBuilder<SoccerClubsBloc, SoccerClubsState>(
        builder: (_, state) {
          switch (state.loadedState) {
            case LoadedState.loading:
              return const Center(child: _LoadingProgess());
            case LoadedState.loaded:
              final soccerClubs = state.soccerClubs;
              return soccerClubs.isEmpty
                  ? Center(child: Text(loca.soccerClubsNoFound))
                  : _SoccerClubsListView(soccerClubs: soccerClubs);
            case LoadedState.error:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: _SoccerClubsErrorFeedback(error: state.error),
                  ),
                  ElevatedButton(
                    onPressed: _loadSoccerClubs,
                    child: Text(loca.retry),
                  ),
                ],
              );
          }
        },
      ),
    );
  }

  void _loadSoccerClubs() {
    sl<SoccerClubsBloc>().add(LoadSoccerClubs());
  }
}
