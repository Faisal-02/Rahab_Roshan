import 'package:flutter/material.dart';

class AppTheme {
  // Text theme
  ThemeData appLightTheme() {
    return ThemeData(
      // the default font for all texts
      fontFamily: "IBM_Arabic",

      textTheme: TextTheme(
        // Heading 1, 2, and 3
        headlineLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),

        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

        headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

        // Heading 4, and 5
        displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

        displayMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

        // Body 1, 2, 3 only!
        bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),

        bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

        bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),

        // this is Body 4
        titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),

        // Body 5
        titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

        // Caption 1 and 2
        labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),

        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
