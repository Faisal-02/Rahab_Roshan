import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/Competitions/widgets/Custom_competitions.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class CompetitionsScreen extends StatefulWidget {
  const CompetitionsScreen({super.key});

  @override
  State<CompetitionsScreen> createState() => _CompetitionsScreenState();
}

class _CompetitionsScreenState extends State<CompetitionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 314,
              height: 44,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ابحث هنا",
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFFB8B8B8),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  suffixIcon: Image.asset(
                    "assets/images/mic-01.png",
                    color: Color(0xFFB8B8B8),
                  ),
                  // contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFF565656)),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.w),
            //Drower
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF6A5ACD),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: IconButton(
                icon: Icon(Icons.menu, color: Colors.white, size: 28.w),
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              ),
            ),
            SizedBox(height: 14),
          ],
        ),
        SizedBox(height: 35),

        Row(children: [SizedBox(width: 16), Text("البطولات القادمة ")]),
        SizedBox(height: 12),
        Row(
          children: [
            SizedBox(width: 85),
            CustomCompetitions(
              titel: "بطولة سباق القمه",
              color: AppColors.secondaryYellowNormalHover,
              dateTime: "0000/00/00",
              number: "##",
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(children: [SizedBox(width: 16), Text("البطولات السابقة")]),
        SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 70),
            CustomCompetitions(
              titel: "بطولة سباق القمه",
              color: AppColors.primaryOneNormalHover,
              dateTime: "0000/00/00",
              imageHero: "assets/images/hero1.png",
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            SizedBox(width: 85),
            CustomCompetitions(
              titel: "بطولة سباق القمه",
              color: AppColors.primaryOneNormalHover,
              dateTime: "0000/00/00",
              imageHero: "assets/images/hero2.png",
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            SizedBox(width: 85),
            CustomCompetitions(
              titel: "بطولة سباق القمه",
              color: AppColors.primaryOneNormalHover,
              dateTime: "0000/00/00",
              imageHero: "assets/images/hero3.png",
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            SizedBox(width: 85),
            CustomCompetitions(
              titel: 'بطولة سباق القمة ',
              color: AppColors.primaryOneNormalHover,
              dateTime: '0000/00/00',
              number: "12",
            ),
          ],
        ),
      ],
    );
  }
}
