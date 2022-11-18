import 'package:flutter/material.dart';

import '../../../../core/injection/injection.dart';
import '../bloc/soccer_clubs_bloc.dart';

class SoccerClubsAppBar extends StatelessWidget {
  const SoccerClubsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: const [
          Text('all about clubs'),
          Spacer(),
          SortingIconButton(),
        ],
      ),
    );
  }
}

class SortingIconButton extends StatefulWidget {
  const SortingIconButton({super.key});

  @override
  State<SortingIconButton> createState() => _SortingIconButtonState();
}

class _SortingIconButtonState extends State<SortingIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _sortController;

  @override
  void initState() {
    _sortController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      upperBound: 0.5,
    );
    super.initState();
  }

  @override
  void dispose() {
    _sortController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_sortController),
      child: IconButton(
        onPressed: _sortSoccerClubs,
        icon: const Icon(Icons.filter_list),
      ),
    );
  }

  void _sortSoccerClubs() {
    final soccerClubsBloc = sl<SoccerClubsBloc>();
    setState(() {
      soccerClubsBloc.state.isSortAscending
          ? _sortController.reverse()
          : _sortController.forward();
    });
    soccerClubsBloc.add(SortSoccerClubsList());
  }
}
