import 'package:flutter/material.dart';

class NavigateBoardController {
  void navigateToLeaderboard(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Scaffold()),
    );
  }
}
