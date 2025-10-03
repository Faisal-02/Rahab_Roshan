import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class CustomeHeroic extends StatelessWidget {
  final String? ImageHero;
  final String titele; //بطولة سباق القمة
  final String subtitel;
  final Color color;

  CustomeHeroic({
    super.key,
    this.ImageHero,
    required this.titele,
    required this.subtitel,
    required this.color,
    required this.dateTime,
  });
  String dateTime = "0000/00/00";
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
              color: AppColors.secondaryYellowNormalHover,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SizedBox(width: 8),
                Column(
                  children: [
                    Text(
                      "المرتبة",
                      style: context.titleSmall!.copyWith(
                        color: AppColors.naturalLight,
                      ),
                    ),
                    Text(
                      "##",
                      style: context.headlineMedium!.copyWith(
                        color: AppColors.naturalLight,
                      ),
                    ),
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
                    Text(
                      "بطولة سباق القمة ",
                      style: context.bodyMedium!.copyWith(
                        color: AppColors.black_500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      dateTime,
                      style: context.titleSmall!.copyWith(
                        color: AppColors.naturalDarkHover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



// Stack(
//       children: [
//         Container(
//           width: 111.w,
//           height: 68.h,
//           decoration: BoxDecoration(
//             color: color,
//             borderRadius: BorderRadius.circular(8.r),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "المرتبة",
//                   style: TextStyle(color: AppColors.naturalLight),
//                 ),
//                 Image.asset(
//                   "assets/images/community_map.png",
//                   width: 36.5.w,
//                   height: 36.5.h,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 280.w, //305.w,
//               height: 77.h, //68.h
//               decoration: BoxDecoration(
//                 color: AppColors.naturalNormal,
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 12),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       titele,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 16.sp,
//                         fontFamily: 'IBMPlexSansArabic-Bold',
//                       ),
//                     ),
//                     Text(
//                       subtitel,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontFamily: 'IBMPlexSansArabic-Regular',
//                         fontSize: 14.sp,
//                         color: AppColors.naturalDarkHover,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Icon(Icons.chevron_right, color: Colors.grey, size: 24.w),
//           ],
//         ),
//       ],
//     );