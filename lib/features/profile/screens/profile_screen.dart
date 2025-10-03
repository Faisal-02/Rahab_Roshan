import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/profile/widgets/championships_details_widget.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // The outer container (grey)
          Container(
            width: 370,
            height: 260,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primaryOneLight,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/profile_avatar.png"),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Text(
                          "أحمد عمر",
                          style: context.displayLarge!.copyWith(
                            color: AppColors.primaryOneDarkActive,
                          ),
                        ),

                        Text(
                          "#120398",
                          style: context.bodySmall!.copyWith(
                            color: AppColors.naturalDarker,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 12),

                ChampionshipsDetailsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
