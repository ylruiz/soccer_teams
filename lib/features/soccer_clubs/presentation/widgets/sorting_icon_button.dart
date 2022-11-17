part of '../screens/soccer_clubs.dart';

class SortingIconButton extends StatefulWidget {
  const SortingIconButton({super.key});

  @override
  State<SortingIconButton> createState() => _SortingIconButtonState();
}

class _SortingIconButtonState extends State<SortingIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _sortController;
  bool _isSortAscending = sl<SoccerClubsBloc>().state.isSortAscending;

  @override
  void initState() {
    _sortController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
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
    return AnimatedBuilder(
      animation: _sortController,
      builder: (_, __) {
        return RotatedBox(
          quarterTurns: _isSortAscending ? 0 : 2,
          child: IconButton(
            onPressed: _sortSoccerClubs,
            icon: const Icon(Icons.filter_list),
          ),
        );
      },
    );
  }

  void _sortSoccerClubs() {
    setState(() {
      _isSortAscending
          ? _sortController.reverse()
          : _sortController.forward();
      _isSortAscending = !_isSortAscending;
    });
    sl<SoccerClubsBloc>().add(SortSoccerClubsList());
  }
}
