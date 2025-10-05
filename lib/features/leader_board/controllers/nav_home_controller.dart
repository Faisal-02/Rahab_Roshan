import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/arena/widget/custom_navbottom.dart';

class NavHomeController {
  void navHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Nav()),
    );
  }
}
