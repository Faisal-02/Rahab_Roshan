import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/result/controllers/navigation_to_board_controller.dart';
import 'package:rehab_roshan_project/features/result/widgets/custome_result.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  final NavigationToBoardController _boardController =
      NavigationToBoardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Winner 1 1.png"),
                Text(
                  "مبروك! 🎉",
                  style: context.headlineLarge!.copyWith(
                    color: AppColors.secondaryNormal,
                  ),
                ),
                Text(
                  "لقد  أكملت السباق بنجاح👏",
                  style: context.bodyLarge!.copyWith(
                    color: AppColors.naturalDarker,
                  ),
                ),
                SizedBox(height: 20.h),
                Image.asset("assets/images/mab.png"),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomResult(
                      titel: 'مرتبك',
                      subtitel: 'السابع',
                      image: 'assets/images/ranking.png',
                    ),
                    SizedBox(width: 8.w),
                    CustomResult(
                      titel: 'عدد عناصر AR',
                      subtitel: '3/4',
                      image: 'assets/images/v1 3.png',
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    CustomResult(
                      titel: 'الوقت المستغرق',
                      subtitel: ' 1:50:05',
                      image: 'assets/images/award-01.png',
                    ),
                    SizedBox(width: 8.w),
                    CustomResult(
                      titel: 'المسافة',
                      subtitel: '2 كم',
                      image: 'assets/images/award-01.png',
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                ElevatedButton(
                  onPressed: () {
                    _boardController.navToLeaderBoard(context);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(370.w, 94.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Color(0xFF5E5492),
                  ),
                  child: Text(
                    "عرض قائمة المتصدرين",
                    style: context.bodyMedium!.copyWith(
                      color: Color(0xFFFEFEFE),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "أو",
                  style: TextStyle(
                    color: AppColors.naturalDarkHover,
                    fontSize: 13.33.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "الرجوع إلى الرئيسية",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13.33.sp,
                      color: AppColors.primaryOneNormal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
