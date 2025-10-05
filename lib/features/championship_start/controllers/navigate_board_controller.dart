import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/result/screens/result_screen.dart';

class NavigateBoardController {
  void navigateToLeaderboard(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen()),
    );
  }
}
