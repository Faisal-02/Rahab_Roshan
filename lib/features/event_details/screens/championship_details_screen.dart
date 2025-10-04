import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/event_details/controllers/navigate_precompitition_controller.dart';
import 'package:rehab_roshan_project/features/event_details/widgets/championship_description_widget.dart';
import 'package:rehab_roshan_project/features/event_details/widgets/championship_time.dart';
import 'package:rehab_roshan_project/features/event_details/widgets/event_details_thumbnail_widget.dart';
import 'package:rehab_roshan_project/features/event_details/widgets/prises_widget.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ChampionshipDetailsScreen extends StatelessWidget {
  ChampionshipDetailsScreen({super.key});

  final NavigatePrecompititionController _navigatePrecompititionController =
      NavigatePrecompititionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              EventDetailsThumbnailWidget(
                eventImagePath: "assets/images/winners_platform.png",
              ),

              // This is the section under the event image
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChampionshipDescriptionWidget(),
                    SizedBox(height: 32),
                    Text(
                      "الجوائز",
                      style: context.displayMedium!.copyWith(
                        color: AppColors.secondaryNormal,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      spacing: 8,
                      children: [
                        PrisesWidget(
                          rankImage: "assets/images/1st_winner_rank_padge.png",
                          rankTitle: "وسام القمة",
                        ),

                        PrisesWidget(
                          rankImage: "assets/images/2nd_winner_rank_padge.png",
                          rankTitle: "ميدالية فضية",
                        ),

                        PrisesWidget(
                          rankImage: "assets/images/3rd_winner_rank_padge.png",
                          rankTitle: "ميدالية برونزية",
                        ),
                      ],
                    ),

                    SizedBox(height: 32),

                    Text(
                      "موعد المسابقة",
                      style: context.displayMedium!.copyWith(
                        color: AppColors.secondaryNormal,
                      ),
                    ),

                    SizedBox(height: 12),
                    ChampionshipTime(),

                    SizedBox(height: 32),
                    Text(
                      "الموقع",
                      style: context.displayLarge!.copyWith(
                        color: AppColors.black_500,
                      ),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      width: 370,
                      height: 191,
                      child: Image.asset("assets/images/Community_map_02.png"),
                    ),

                    SizedBox(height: 20),

                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          _navigatePrecompititionController.navToPrecompitition(
                            context,
                          );
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStatePropertyAll(
                            Size(370, 50.999996185302734),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(5.57),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            AppColors.primaryOneNormal,
                          ),
                        ),
                        child: Text(
                          "الانضمام للبطولة",
                          style: context.displayLarge!.copyWith(
                            color: AppColors.naturalLight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
