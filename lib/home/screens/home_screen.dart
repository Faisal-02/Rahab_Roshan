import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rehab_roshan_project/home/widgets/home_welcom_section_widget.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // The welcoming top section
                HomeWelcomSectionWidget(),

                SizedBox(height: 24),

                // Today's champion section
                ChampoinDateWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChampoinDateWidget extends StatelessWidget {
  const ChampoinDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 73,
          decoration: BoxDecoration(color: AppColors.secondaryYellowLight),
          child: Row(
            children: [
              Container(
                width: 63,
                height: 57,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        DateTime.now().day.toString(),
                        style: Theme.of(context).textTheme.headlineMedium!
                            .copyWith(color: AppColors.naturalLight),
                      ),
                      Text(
                        DateFormat.MMM().format(DateTime.now()).toString(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.naturalLight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // between the date container and the texts
              SizedBox(width: 11),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "بطولة اليوم",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.naturalDarkHover,
                    ),
                  ),
                  Text(
                    "بطولة سباق القمة ",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
