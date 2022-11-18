import 'package:dartz/dartz.dart';

import '../../../core/network/api_connection_exception.dart';
import '../../../core/network/api_manager.dart';
import '../../../core/network/api_urls.dart';
import '../models/soccer_club_model.dart';

/// [SoccerClubsRepo] acts as an intermediary between the [SoccerClubsBloc] and
/// the [ApiManager]  to get the needed data from the client.
///
/// See also:
///  *[ApiManager], which handles the api connections.
///  *[SoccerClubsBloc], which manages the states of [SoccerClubsScreen]
class SoccerClubsRepo {
  SoccerClubsRepo(this._apiManager);

  final ApiManager _apiManager;

  /// Returns the list of soccer clubs is the response from the client is
  /// successful. Otherwise, it will return an exception
  /// [ApiConnectionException]
  ///
  /// ```dart
  /// final loadedSoccerClubs = await sl<SoccerClubsRepo>().loadSoccerClubs();
  /// ```
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
