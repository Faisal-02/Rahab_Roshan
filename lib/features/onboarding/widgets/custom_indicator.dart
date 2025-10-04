import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class CustomeIndicator extends StatelessWidget{
  final bool active;
  const CustomeIndicator({super.key,required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(microseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: active?AppColors.primaryOneNormal :Color(0xFFD2D4D5),
      ),
      width:active?30.w:10.w ,
      height: 10.h,
    );
  }
}