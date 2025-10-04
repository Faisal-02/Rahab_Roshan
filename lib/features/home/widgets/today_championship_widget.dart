import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rehab_roshan_project/features/home/controllers/navigate_details_controller.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class TodayChampionshipWidget extends StatelessWidget {
  TodayChampionshipWidget({super.key});

  final NavigateToDetailsController _navigateToDetailsController =
      NavigateToDetailsController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 73,
          padding: EdgeInsets.all(8),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.secondaryYellowLight,
          ),
          child: Row(
            children: [
              Container(
                width: 63,
                height: 57,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: AppColors.secondaryYellowNormalHover,
                  borderRadius: BorderRadius.circular(8),
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
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColors.naturalDarkHover,
                    ),
                  ),
                  Text(
                    "بطولة سباق القمة",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.secondaryNormal,
                    ),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  _navigateToDetailsController.toEventDetails(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryOneNormal,
                  minimumSize: Size(87, 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(3.67),
                  ),
                ),
                child: Text(
                  "بدء السباق",
                  style: context.titleSmall!.copyWith(
                    color: AppColors.naturalLight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
