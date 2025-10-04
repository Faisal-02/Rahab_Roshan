import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rehab_roshan_project/features/event_details/screens/championship_details_screen.dart';

class NavigateToDetailsController {
  void toEventDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChampionshipDetailsScreen()),
    );
  }
}
