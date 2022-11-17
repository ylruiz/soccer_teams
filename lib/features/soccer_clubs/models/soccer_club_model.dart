import 'package:equatable/equatable.dart';

class SoccerClubModel extends Equatable {
  const SoccerClubModel({
    required this.id,
    required this.name,
    required this.country,
    required this.value,
    required this.imageUrl,
    required this.europeanTitles,
  });

  SoccerClubModel.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          name: json['name'],
          country: json['country'],
          value: json['value'],
          imageUrl: json['image'],
          europeanTitles: json['european_titles'],
        );

  final String id;
  final String name;
  final String country;
  final int value;
  final String imageUrl;
  final int europeanTitles;

  @override
  List<Object?> get props => [
        id,
        name,
        country,
        value,
        imageUrl,
        europeanTitles,
      ];
}
