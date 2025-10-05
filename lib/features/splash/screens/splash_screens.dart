
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/onboarding/screens/onboarding_screen.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Timer(const Duration(seconds: 5), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo (2).png',
                    width: 179.37.w,
                    height: 162.23.h,
                  ),
                   Text('رحاب روشن', style: TextStyle(
                      fontSize: 34.28,
                      fontWeight:FontWeight.w700,
                      color: AppColors.primaryOneNormal,
                    ),
                     textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}