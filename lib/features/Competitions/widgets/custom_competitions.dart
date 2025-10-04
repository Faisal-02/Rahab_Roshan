
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';
//import 'package:rehab_roshan_project/style/ctx.dart';

class CustomCompetitions extends StatelessWidget {
  final String  ? ImageHero;
  final String ?number;//12,##
  final String titel;
  final Color color;
  final String dateTime ;

  CustomCompetitions({
    super.key,
    this.ImageHero,
    required this.titel,
    required this.color,
    required this.dateTime,
     this.number,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topStart,
      children: [
        Positioned(
          right: -80,
          child: Container(
            width: 111,
            height: 68,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            decoration: BoxDecoration(
              color:color ,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SizedBox(width: 8),
                Column(
                  children: [
                    Text("المرتبة", style: context.titleSmall!.copyWith(color: AppColors.naturalLight,),),
                    if (number != null)
                      Text(number!, style: context.headlineMedium!.copyWith(color: AppColors.naturalLight)),
                    if (ImageHero != null)
                      Image.asset(ImageHero!, width: 36.5.w, height: 36.5.h),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: 305,
            height: 68,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.naturalNormal,
              borderRadius: BorderRadius.circular(8),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(titel, style: context.bodyMedium!.copyWith(
                        color: AppColors.black_500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(dateTime, style: context.titleSmall!.copyWith(
                        color: AppColors.naturalDarkHover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
            top: 2,
            bottom: 3,
            child: Icon(Icons.chevron_right,color: AppColors.primaryOneNormalHover,))
      ],
    );
  }
}


