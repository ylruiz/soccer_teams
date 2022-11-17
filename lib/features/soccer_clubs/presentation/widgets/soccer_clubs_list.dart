part of '../screens/soccer_clubs.dart';

class _SoccerClubsListView extends StatelessWidget {
  const _SoccerClubsListView({required this.soccerClubs});

  final List<SoccerClubModel> soccerClubs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final soccerClubDetails = soccerClubs[index];
        return GestureDetector(
          onTap: () => context.go(
            Paths.soccerClubDetails,
            extra: soccerClubDetails,
          ),
          child: Row(
            children: [
              Image.network(
                soccerClubDetails.imageUrl,
                height: 100,
              ),
              Column(
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
                    style: const TextStyle(fontSize: 10),
                  ),
                  Text('${soccerClubDetails.value} Millionen'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
