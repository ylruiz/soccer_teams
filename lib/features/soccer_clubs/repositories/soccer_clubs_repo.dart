import 'package:dartz/dartz.dart';

import '../../../core/network/api_connection_exception.dart';
import '../../../core/network/api_manager.dart';
import '../../../core/network/api_urls.dart';
import '../models/soccer_club_model.dart';

class SoccerClubsRepo {
  SoccerClubsRepo(this._apiManager);

  final ApiManager _apiManager;

  Future<Either<ApiConnectionException, List<SoccerClubModel>>>
      loadSoccerClubs() async {
    final response = await _apiManager.getRequest(ApiUrls.soccerClubsUrl);
    return response.fold(
      (error) => Left(error),
      (success) {
        if (success.data.isEmpty) {
          return const Right([]);
        } else {
          List<SoccerClubModel> soccerClubs = success.data
              .map<SoccerClubModel>((club) => SoccerClubModel.fromJson(club))
              .toList();
          soccerClubs.sort((a, b) => a.name.compareTo(b.name));
          return Right(soccerClubs);
        }
      },
    );
  }
}
