import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/leader_board/screens/leader_board_screen.dart';

class NavigationToBoardController {
  void navToLeaderBoard(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LeaderBoardScreen()),
    );
  }
}
