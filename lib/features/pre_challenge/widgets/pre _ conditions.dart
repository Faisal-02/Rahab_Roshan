import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class Pre_conditions extends StatelessWidget {
  final String nummber;
  final String rols;

  const Pre_conditions({super.key,required this.nummber, required this.rols});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 16),
          width: 110.w,
          height: 143.h,
          decoration: BoxDecoration(
            color: AppColors.naturalNormal,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(rols,style: context.labelLarge!.copyWith(color: AppColors.secondaryNormal),),
        ),
        Container(
          alignment: Alignment.center,
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: AppColors.secondaryYellowNormalHover
          ),
          child: Text(nummber,style: context.bodyMedium!.copyWith(color: AppColors.naturalLight),),
        )
      ],
    );
  }

}