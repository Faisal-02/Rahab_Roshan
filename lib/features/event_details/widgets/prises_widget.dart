import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class PrisesWidget extends StatelessWidget {
  const PrisesWidget({
    super.key,
    required this.rankImage,
    required this.rankTitle,
  });
  final String rankImage;
  final String rankTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119,
      height: 143,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.naturalNormal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Image.asset(rankImage),
          Text(
            rankTitle,
            style: context.titleMedium!.copyWith(
              color: AppColors.primaryOneDarkHover,
            ),
          ),
          Text(
            "+",
            style: context.titleMedium!.copyWith(
              color: AppColors.primaryOneDarkHover,
            ),
          ),
          Text(
            "جائزة نقدية",
            style: context.titleMedium!.copyWith(
              color: AppColors.primaryOneDarkHover,
            ),
          ),
        ],
      ),
    );
  }
}
