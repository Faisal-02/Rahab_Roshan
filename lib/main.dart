import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rehab_roshan_project/home/screens/home_screen.dart';
import 'package:rehab_roshan_project/style/themes/light_theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //--- Other Screens objects--- //
  final AppTheme _appTheme = AppTheme();

  // --------- End -------------//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: _appTheme.appLightTheme(),
      home: HomeScreen(),
    );
  }
}
