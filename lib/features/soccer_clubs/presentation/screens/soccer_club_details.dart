import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:styled_text/styled_text.dart';

import '../../models/soccer_club_model.dart';

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
        title: Text(name),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(soccerClubDetails.imageUrl),
              Positioned(
                left: 10,
                bottom: 0,
                child: Text(country),
              )
            ],
          ),
          StyledText(
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
          Text(
            europeanTitles == 1
                ? loca.soccerClubOneVictory(name)
                : loca.soccerClubVictories(name, europeanTitles),
          ),
        ],
      ),
    );
  }
}
