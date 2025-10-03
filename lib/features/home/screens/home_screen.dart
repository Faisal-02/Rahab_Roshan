import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/home/controllers/championships_list_controller.dart';
import 'package:rehab_roshan_project/features/home/widgets/home_welcom_section_widget.dart';
import 'package:rehab_roshan_project/features/home/widgets/today_championship_widget.dart';
import 'package:rehab_roshan_project/features/home/widgets/winners_platform_widget.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ChampionshipsListController _championshipsListController =
      ChampionshipsListController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // The welcoming top section
              HomeWelcomSectionWidget(),

              SizedBox(height: 24),

              // Today's champion section
              TodayChampionshipWidget(),

              SizedBox(height: 24),
              Text(
                "خريطة المجتمع السكني",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: AppColors.secondaryNormal,
                ),
              ),

              SizedBox(height: 16),

              //TODO The community map image, i will try ro make it a real map later
              Container(
                width: 370,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(style: BorderStyle.none),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset("assets/images/community_map.png"),
              ),

              SizedBox(height: 24),

              Text(
                "قائمة المتصدرين",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: AppColors.secondaryNormal,
                ),
              ),

              SizedBox(height: 16),

              WinnersPlatformWidget(),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "البطولات الحديثة",
                    style: context.displayMedium!.copyWith(
                      color: AppColors.secondaryNormal,
                    ),
                  ),

                  Text(
                    "عرض الكل",
                    style: context.titleSmall!.copyWith(
                      color: AppColors.primaryOneNormal,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12,
                  children:
                      _championshipsListController.champoionshipsListWidget,
                ),
              ),

              SizedBox(height: 24),

              Container(
                width: 370,
                height: 154,
                decoration: BoxDecoration(
                  color: AppColors.naturalNormal,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 18),
                      Text(
                        "ما لقيت البطولة اللي تدور عليها؟",
                        style: context.displayMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "اقترح بطولة جديدة وخلينا نوسع الميدان معك، ونفتح المجال لمنافسات تلهمك وتلهم غيرك",
                        style: context.titleSmall!.copyWith(
                          color: AppColors.naturalDarker,
                        ),
                      ),

                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.naturalLightActive,
                              fixedSize: Size(188, 26),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                                side: BorderSide(
                                  color: AppColors.primaryOneNormalHover,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "اقترح الآن",
                              style: context.bodySmall!.copyWith(
                                color: AppColors.primaryOneNormalHover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
