import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/championship_start/widgets/video_example_player.dart';

class StartedChampionScreen extends StatelessWidget {
  const StartedChampionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: VideoExamplePlayer());
  }
}
