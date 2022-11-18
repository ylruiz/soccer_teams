import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../core/paths.dart';
import '../../models/soccer_club_model.dart';
import '../widgets/soccer_club_image.dart';

class SoccerClubDetailsScreen extends StatelessWidget {
  const SoccerClubDetailsScreen({
    super.key,
    required this.soccerClubDetails,
  });

  final SoccerClubModel soccerClubDetails;

  @override
  Widget build(BuildContext context) {
    final loca = AppLocalizations.of(context)!;
    final name = soccerClubDetails.name;
    final country = soccerClubDetails.country;
    final europeanTitles = soccerClubDetails.europeanTitles;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go(Paths.soccerClubs),
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: false,
        title: Text(name),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[800],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Center(child: SoccerClubImage(soccerClubDetails.imageUrl)),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Text(
                    country,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: StyledText(
              text: loca.soccerClubDetails(
                name,
                country,
                soccerClubDetails.value,
              ),
              tags: {
                'strong': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              europeanTitles == 1
                  ? loca.soccerClubOneVictory(name)
                  : loca.soccerClubVictories(name, europeanTitles),
            ),
          ),
        ],
      ),
    );
  }
}
