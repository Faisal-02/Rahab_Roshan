import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/Competitions/widgets/custom_competitions.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 14),
            ],
          ),
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
