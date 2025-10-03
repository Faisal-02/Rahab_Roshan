import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class NavBarController {
  List<Widget> screensTitle = [];

  Widget getScreensTitle(BuildContext context, int index) {
    screensTitle = [
      Text("", style: context.displayLarge!.copyWith(color: Color(0xff1B1D1C))),

      Text(
        "الميدان",
        style: context.displayLarge!.copyWith(color: Color(0xff1B1D1C)),
      ),

      Text(
        "بطولاتي",
        style: context.displayLarge!.copyWith(color: Color(0xff1B1D1C)),
      ),

      Text(
        "حسابي",
        style: context.displayLarge!.copyWith(color: Color(0xff1B1D1C)),
      ),
    ];

    return screensTitle[index];
  }
}
