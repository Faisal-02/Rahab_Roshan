import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/arena/widget/tab_bar.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class ArenaScreen extends StatefulWidget {
  const ArenaScreen({super.key});
  @override
  State<ArenaScreen> createState() => _ArenaScreenState();
}

class _ArenaScreenState extends State<ArenaScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "ابحث هنا",
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.naturalDark,
                    ),
                    prefixIcon: Image.asset("assets/images/Search_icon.png"),

                    suffixIcon: Image.asset(
                      "assets/images/mic-01.png",
                      color: AppColors.naturalDarker,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xFF565656)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                width: 44,
                height: 44,

                decoration: BoxDecoration(
                  color: AppColors.primaryOneNormal,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset("assets/images/drawer_icon.png"),
              ),
            ],
          ),
        ),
        Expanded(child: CustomTabBarPage()),
      ],
    );
  }
}
