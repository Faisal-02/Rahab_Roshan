import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class CustomResult extends StatelessWidget{
  final String titel;
  final String subtitel;
  final String image;
  const CustomResult({super.key,required this.titel,required this.subtitel,required this.image});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 181.w,
          height: 109.h,
          decoration: BoxDecoration(
            color: AppColors.naturalNormal,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            children: [
              Text(titel,style: context.bodyMedium!.copyWith(color: AppColors.secondaryNormalHover),),
              Text(subtitel,style: context.bodySmall!.copyWith(color: AppColors.naturalDarker))
            ],
          ),
        ),
        Positioned(
          top: 10.h,
          left: 15.w,
          child: Padding(
            padding: EdgeInsets.only(right: 12),
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.primaryOneNormal,
              ),
              child: Image.asset(image),
            ),
          ),
        )
      ],
    );
  }
}