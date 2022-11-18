part of '../screens/soccer_clubs.dart';

class _SoccerClubsListView extends StatelessWidget {
  const _SoccerClubsListView({required this.soccerClubs});

  final List<SoccerClubModel> soccerClubs;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(),
      itemCount: soccerClubs.length,
      itemBuilder: (_, index) {
        final soccerClubDetails = soccerClubs[index];
        return GestureDetector(
          onTap: () => context.go(
            Paths.soccerClubDetails,
            extra: soccerClubDetails,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SoccerClubImage(soccerClubDetails.imageUrl),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        soccerClubDetails.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        soccerClubDetails.country,
                        style: const TextStyle(fontSize: 12),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            AppLocalizations.of(context)!
                                .soccerClubValue(soccerClubDetails.value),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
