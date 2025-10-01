import 'package:flutter/material.dart';

class AppTheme {
  // Text theme
  ThemeData appLightTheme() {
    return ThemeData(
      textTheme: TextTheme(
        // Heading 1,2, 3, 4, and 5
        headlineLarge: TextStyle(
          fontSize: 26,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        headlineMedium: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        headlineSmall: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        displayLarge: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        displayMedium: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        // Body 1, 2, 3 only!
        bodyLarge: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.w400,
        ),

        bodyMedium: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        bodySmall: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.w400,
        ),

        // this is Body 4
        titleSmall: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.w400,
        ),

        // Caption 1 and 2
        labelLarge: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.bold,
        ),

        labelMedium: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontFamily: "IBM_Arabic",
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
