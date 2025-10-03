import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/profile/widgets/championships_details_widget.dart';
import 'package:rehab_roshan_project/features/profile/widgets/settings_options_widget.dart';
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
      child: SingleChildScrollView(child: SettingsOptionsWidget()),
    );
  }
}
