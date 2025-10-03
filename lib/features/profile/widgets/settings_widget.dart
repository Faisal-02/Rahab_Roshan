import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.leadingIconPath,
    this.isSwitch = false,
    required this.trailingIcon,
  });
  final String mainTitle;
  final String subTitle;
  final String leadingIconPath;
  final bool isSwitch;
  final String trailingIcon;

  @override
  State<SettingsWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SettingsWidget> {
  bool notificationState = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.leadingIconPath),
      title: Text(
        widget.mainTitle,
        style: context.titleMedium!.copyWith(
          color: AppColors.primaryOneDarkActive,
        ),
      ),

      subtitle: Text(
        widget.subTitle,
        style: context.titleSmall!.copyWith(color: AppColors.naturalDarkHover),
      ),
      trailing: widget.isSwitch
          ? SizedBox(
              width: 20,
              height: 10,
              child: Switch(
                value: notificationState,
                onChanged: (value) {
                  notificationState = value;
                  setState(() {});
                },
              ),
            )
          : Image.asset(widget.trailingIcon),
    );
  }
}
