import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class WinnerAvatarWidget extends StatelessWidget {
  const WinnerAvatarWidget({
    super.key,
    required this.leftPosition,
    required this.rightPosition,
    required this.topPosition,
    required this.bottomPosition,
    required this.winnerName,
    required this.winnerAvatarPath,
    this.isFirst = false,
  });

  // --- Winner position on the stack and its info ---//
  final double leftPosition;
  final double rightPosition;
  final double topPosition;
  final double bottomPosition;
  final String winnerName;
  final String winnerAvatarPath;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftPosition,
      right: rightPosition,
      bottom: bottomPosition,
      top: topPosition,

      child: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          SizedBox(child: Image.asset(winnerAvatarPath)),
          // if winner is 1st it will show the crowen,
          //else empty sizedBox => no crowen
          isFirst
              ? Positioned(
                  left: 20,
                  right: 0,
                  bottom: 36,
                  child: SizedBox(
                    width: 25.56,
                    height: 22.78,
                    child: Image.asset("assets/images/1st_place_crown.png"),
                  ),
                )
              : SizedBox(),
          Positioned(
            top: 45,
            child: Text(
              winnerName,
              style: context.labelLarge!.copyWith(
                color: AppColors.primaryDarkHover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
