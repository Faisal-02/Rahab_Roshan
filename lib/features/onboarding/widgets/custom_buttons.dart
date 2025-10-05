import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/arena/widget/custom_navbottom.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class CustomButtons extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final PageController pageController;
  const CustomButtons({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.pageController,
  });
  @override
  Widget build(BuildContext context) {
    bool isLastPage = currentPage == totalPages - 1;
    if (isLastPage) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Nav()),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(370.w, 48.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            backgroundColor: Color(0xFF5E5492),
          ),
          child: Text(
            "تسجيل الدخول",
            style: context.displayMedium!.copyWith(
              color: AppColors.naturalLight,
            ),
          ),
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(234.w, 48.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.r),
              ),
              backgroundColor: Color(0xFF5E5492),
            ),
            child: Text(
              "التالي",
              style: context.titleMedium!.copyWith(color: Color(0xFFFEFEFE)),
            ),
          ),

          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Nav()),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(128.w, 48.h),
              backgroundColor: AppColors.naturalLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.r),
                side: BorderSide(color: AppColors.primaryOneNormal, width: 1.w),
              ),
            ),
            child: Text("تخطي"),
          ),
        ],
      );
    }
  }
}
