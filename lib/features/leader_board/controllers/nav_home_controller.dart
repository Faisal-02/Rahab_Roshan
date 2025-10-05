import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rehab_roshan_project/features/arena/widget/custom_navbottom.dart';
import 'package:rehab_roshan_project/features/home/screens/home_screen.dart';

class NavHomeController {
  void navHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Nav()),
    );
  }
}
