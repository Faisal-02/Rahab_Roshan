import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ChampionshipsDetailsWidget extends StatelessWidget {
  const ChampionshipsDetailsWidget({
    super.key,
    this.totalChampionships = 24,
    this.currentChampionships = 4,
    this.previousChampionShip = 20,
  });

  final int totalChampionships;
  final int currentChampionships;
  final int previousChampionShip;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346,
      height: 164,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),

      decoration: BoxDecoration(
        color: AppColors.primaryOneNormal,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "عدد البطولات",
                style: context.titleSmall!.copyWith(
                  color: AppColors.naturalLightActive,
                ),
              ),

              SizedBox(height: 35.75),

              Image.asset("assets/images/star.png"),

              SizedBox(height: 8),
              Text(
                "$totalChampionships بطولة",
                style: context.bodyMedium!.copyWith(
                  color: AppColors.secondaryYellowLightActive,
                ),
              ),
            ],
          ),

          VerticalDivider(indent: 0, endIndent: 0, width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "البطولات القائمة",
                style: context.titleSmall!.copyWith(
                  color: AppColors.naturalLightActive,
                ),
              ),

              SizedBox(height: 35.75),

              Image.asset("assets/images/star.png"),

              SizedBox(height: 8),
              Text(
                "$currentChampionships بطولات",
                style: context.bodyMedium!.copyWith(
                  color: AppColors.secondaryBlueNormal,
                ),
              ),
            ],
          ),
          VerticalDivider(indent: 0, endIndent: 0, width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "البطولات المنتهية",
                style: context.titleSmall!.copyWith(
                  color: AppColors.naturalLightActive,
                ),
              ),

              SizedBox(height: 35.75),

              Image.asset("assets/images/star.png"),

              SizedBox(height: 8),
              Text(
                "$previousChampionShip  بطولة",
                style: context.bodyMedium!.copyWith(
                  color: AppColors.naturalNormalActive,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
