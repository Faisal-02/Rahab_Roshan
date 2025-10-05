import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ChampionshipTime extends StatelessWidget {
  const ChampionshipTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 63,
          padding: EdgeInsets.all(8),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.secondaryYellowLight,
          ),
          child: Row(
            children: [
              Container(
                width: 95,
                height: 63,
                decoration: BoxDecoration(
                  color: AppColors.secondaryYellowNormalHover,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${DateFormat.MMM().format(DateTime.now()).toString().toUpperCase()} ",
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(color: AppColors.naturalLight),
                      ),
                      Text(
                        DateTime.now().day.toString(),
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(color: AppColors.naturalLight),
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
                    "يوم الأحد",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.black_500,
                    ),
                  ),
                  Text(
                    "الساعة: 4:00 مساء",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.naturalDarkHover,
                    ),
                  ),
                ],
              ),
              Spacer(),

              Text(
                "بدء السباق",
                style: context.titleSmall!.copyWith(
                  color: AppColors.naturalLight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
