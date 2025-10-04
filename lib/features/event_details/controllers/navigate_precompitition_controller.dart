import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/championship_start/widgets/video_example_player.dart';

class NavigatePrecompititionController {
  void navToPrecompitition(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => VideoExamplePlayer()),
    );
  }
}
