import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  // Bell notification container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppColors.naturalDarkActive,
                    ),
                    child: Image.asset("assets/images/notification_bell.png"),
                  ),

                  Spacer(),

                  Column(
                    children: [
                      Text(
                        "أهلاً بك مجدداً",
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(color: AppColors.naturalDarkHover),
                      ),
                      Text(
                        "سلطان إبراهيم",
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(color: AppColors.primaryDarkHover),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
