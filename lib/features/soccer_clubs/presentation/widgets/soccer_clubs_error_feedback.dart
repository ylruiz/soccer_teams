part of '../screens/soccer_clubs.dart';

class _SoccerClubsErrorFeedback extends StatelessWidget {
  const _SoccerClubsErrorFeedback({required this.error});

  final ApiConnectionException error;

  @override
  Widget build(BuildContext context) {
    final loca = AppLocalizations.of(context)!;

    switch (error.errorType) {
      case ApiConnectionErrorType.none:
        return const SizedBox();
      case ApiConnectionErrorType.noInternet:
        return TagStyledText(text: loca.noInternet);
      case ApiConnectionErrorType.redirection:
        // TODO: use loca.
        return Text(error.statusMessage);
      case ApiConnectionErrorType.clientError:
        return TagStyledText(
          text: loca.clientError(error.statusCode),
          hyperlinkOnTap: _contactSupport,
        );
      case ApiConnectionErrorType.serverError:
        return TagStyledText(
          text: loca.serverError(error.statusCode),
          hyperlinkOnTap: _contactSupport,
        );
      default:
        return TagStyledText(
          text: loca.undefinedError(error.statusCode),
          hyperlinkOnTap: _contactSupport,
        );
    }
  }

  void _contactSupport() {
    throw UnimplementedError('_contactSupport is not implemented yet.');
  }
}
