import 'package:flutter/material.dart';

class SoccerClubImage extends StatelessWidget {
  const SoccerClubImage(this.src, {super.key});

  final String src;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      src,
      width: 100,
    );
  }
}
