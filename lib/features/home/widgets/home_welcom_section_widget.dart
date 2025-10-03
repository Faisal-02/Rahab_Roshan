import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class HomeWelcomSectionWidget extends StatelessWidget {
  const HomeWelcomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              "أهلاً بك مجدداً",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.naturalDarkHover,
              ),
            ),

            Text(
              "سلطان إبراهيم",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.primaryOneNormalHover,
              ),
            ),
          ],
        ),

        // Bell notification container
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: AppColors.naturalDarkActive),
          ),
          child: Image.asset("assets/images/notification_bell.png"),
        ),
      ],
    );
  }
}
