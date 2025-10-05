import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class CustomResult extends StatelessWidget {
  final String titel;
  final String subtitel;
  final String image;
  const CustomResult({
    super.key,
    required this.titel,
    required this.subtitel,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 181,
          height: 109,
          decoration: BoxDecoration(
            color: AppColors.naturalNormal,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Text(
                  titel,
                  style: context.titleMedium!.copyWith(
                    color: AppColors.secondaryNormalHover,
                  ),
                ),
                Text(
                  subtitel,
                  style: context.bodySmall!.copyWith(
                    color: AppColors.naturalDarker,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 15,
          child: Padding(
            padding: EdgeInsets.only(right: 12),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.primaryOneNormal,
              ),
              child: Image.asset(image),
            ),
          ),
        ),
      ],
    );
  }
}
