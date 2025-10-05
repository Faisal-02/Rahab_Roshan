import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class RankBannerWidget extends StatelessWidget {
  const RankBannerWidget({
    super.key,
    required this.winnerImagePath,
    required this.winnerName,
    required this.winnerRecord,
    required this.winnerRank,
    this.isMe = false,
  });

  final String winnerImagePath;
  final String winnerName;
  final String winnerRecord;
  final int winnerRank;
  final bool? isMe;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(winnerImagePath),
      title: isMe!
          ? Text(
              winnerName,
              style: context.titleMedium!.copyWith(
                color: AppColors.secondaryYellowNormal,
              ),
            )
          : Text(
              winnerName,
              style: context.titleMedium!.copyWith(
                color: AppColors.primaryOneDarkActive,
              ),
            ),
      subtitle: isMe!
          ? Text(
              winnerRecord,
              style: context.titleSmall!.copyWith(
                color: AppColors.secondaryYellowNormal,
              ),
            )
          : Text(
              winnerRecord,
              style: context.titleSmall!.copyWith(
                color: AppColors.naturalDarkHover,
              ),
            ),
      trailing: isMe!
          ? Text(
              "#$winnerRank",
              style: context.labelLarge!.copyWith(
                color: AppColors.secondaryYellowNormal,
              ),
            )
          : Text(
              "#$winnerRank",
              style: context.labelLarge!.copyWith(
                fontSize: 12.3,
                color: AppColors.black_500,
              ),
            ),
    );
  }
}
