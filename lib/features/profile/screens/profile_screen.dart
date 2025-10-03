import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/profile/widgets/championships_details_widget.dart';
import 'package:rehab_roshan_project/features/profile/widgets/settings_widget.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
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

            SizedBox(height: 12),
            Container(
              width: 370,
              height: 246,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.naturalNormal,
              ),

              child: Column(
                children: [
                  SettingsWidget(
                    mainTitle: "الجوائز",
                    subTitle: "اطلع على جوائزك",
                    leadingIconPath: "assets/images/prise_icon.png",
                    trailingIcon: "assets/images/enter_setting_icon.png",
                  ),
                  Divider(
                    height: 0,
                    color: AppColors.primaryOneNormal,
                    thickness: 0.3,
                  ),
                  SettingsWidget(
                    mainTitle: " المفضلة",
                    subTitle: "استعرض البطولات المفضلة بالنسبة لك",
                    leadingIconPath: "assets/images/fav_championship_icon.png",
                    trailingIcon: "assets/images/enter_setting_icon.png",
                  ),
                  Divider(
                    height: 0,
                    color: AppColors.primaryOneNormal,
                    thickness: 0.3,
                  ),
                  SettingsWidget(
                    mainTitle: "الإشعارات",
                    subTitle: "فعل إشعارات التطبيق ليصلك كل جديد",
                    leadingIconPath: "assets/images/Notification_Icon.png",
                    isSwitch: true,
                    trailingIcon: "assets/images/enter_setting_icon.png",
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 370,
              height: 246,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.naturalNormal,
              ),

              child: Column(
                children: [
                  SettingsWidget(
                    mainTitle: "المساعدة والدعم",
                    subTitle: "دليلك في كل خطوة",
                    leadingIconPath: "assets/images/help_and_support_icon.png",
                    trailingIcon: "assets/images/enter_setting_icon.png",
                  ),
                  Divider(
                    height: 0,
                    color: AppColors.primaryOneNormal,
                    thickness: 0.3,
                  ),
                  SettingsWidget(
                    mainTitle: "تواصل معنا",
                    subTitle: "نسمعك دائما",
                    leadingIconPath: "assets/images/about_app_icon.png",
                    trailingIcon: "assets/images/enter_setting_icon.png",
                  ),
                  Divider(
                    height: 0,
                    color: AppColors.primaryOneNormal,
                    thickness: 0.3,
                  ),
                  SettingsWidget(
                    mainTitle: "عن التطبيق",
                    subTitle: "تعرف علينا أكثر",
                    leadingIconPath: "assets/images/prise_icon.png",
                    trailingIcon: "assets/images/enter_setting_icon.png",
                  ),
                ],
              ),
            ),

            SizedBox(height: 33),
          ],
        ),
      ),
    );
  }
}
