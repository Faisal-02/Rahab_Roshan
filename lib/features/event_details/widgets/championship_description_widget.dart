import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ChampionshipDescriptionWidget extends StatelessWidget {
  const ChampionshipDescriptionWidget({super.key});

  final String championDescription = '''
سباق مليء بالحماس والتشويق يبدأ من خط البداية وحتى آخر متر. 
في بطولة سباق القمة، يتنافس المشاركون على تجاوز التحديات وتحقيق أفضل زمن ممكن.

  •   يبدأ السباق عند نقطة الانطلاق المحددة ويستمر 
      حتى خط النهاية.
  •  سيتم تسجيل الأوقات بدقة عبر نظام مؤقت
      إلكتروني.
  •   جميع المشاركين سيحصلون على شهادة مشاركة، 
      بينما الفائزون بالمراكز الثلاثة الأولى سينالون الجوائز 
      الكبرى 🏆.  
  •   لا تنسَ الاطلاع على خريطة السباق لمعرفة المسار 
      ونقاط التوقف. ''';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text("بطولة سباق القمة", style: context.headlineMedium),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      width: 81,
                      height: 28,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppColors.secondaryBlueDark,
                        ),
                        color: AppColors.secondaryBlueLightHover,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      top: -3,
                      child: Text(
                        textAlign: TextAlign.center,
                        "رياضي",
                        style: context.bodyLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
            Row(
              spacing: 24.83,
              children: [
                Image.asset("assets/images/black_share_icon.png"),
                Image.asset("assets/images/black_favourite_icon.png"),
              ],
            ),
          ],
        ),

        ReadMoreText(
          championDescription,
          trimMode: TrimMode.Line,
          trimLines: 2,
          trimCollapsedText: 'قراءة المزيد',
          delimiter: ". ",
          delimiterStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.naturalDarkActive,
          ),
          trimExpandedText: "",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.naturalDarkActive,
          ),
          moreStyle: context.displayMedium!.copyWith(
            color: AppColors.primaryOneNormal,
          ),
          lessStyle: context.displayMedium!.copyWith(
            color: AppColors.primaryOneNormal,
          ),
        ),
      ],
    );
  }
}
