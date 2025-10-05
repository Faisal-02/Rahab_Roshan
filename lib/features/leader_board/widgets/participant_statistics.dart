import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/leader_board/widgets/rank_banner_widget.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class ParticipantStatistics extends StatelessWidget {
  const ParticipantStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RankBannerWidget(
          winnerImagePath: "assets/images/rank04.png",
          winnerName: "فيصل عبدالله",
          winnerRecord: "1:35:20",
          winnerRank: 4,
        ),

        Divider(
          height: 0,
          indent: 0,
          endIndent: 0,
          thickness: 0.3,
          color: AppColors.primaryOneNormal,
        ),

        RankBannerWidget(
          winnerImagePath: "assets/images/rank05.png",
          winnerName: "معتز فهد",
          winnerRecord: "1:42:10",
          winnerRank: 5,
        ),

        Divider(
          height: 0,
          indent: 0,
          endIndent: 0,
          thickness: 0.3,
          color: AppColors.primaryOneNormal,
        ),

        RankBannerWidget(
          winnerImagePath: "assets/images/rank06.png",
          winnerName: "سارة محمد",
          winnerRecord: "1:45:30 ",
          winnerRank: 6,
        ),

        Divider(
          height: 0,
          indent: 0,
          endIndent: 0,
          thickness: 0.3,
          color: AppColors.primaryOneNormal,
        ),

        RankBannerWidget(
          winnerImagePath: "assets/images/rank07.png",
          winnerName: "انت",
          winnerRecord: "1:50:05",
          winnerRank: 7,
          isMe: true,
        ),

        Divider(
          height: 0,
          indent: 0,
          endIndent: 0,
          thickness: 0.3,
          color: AppColors.primaryOneNormal,
        ),

        RankBannerWidget(
          winnerImagePath: "assets/images/rank08.png",
          winnerName: "محمد إبراهيم",
          winnerRecord: "1:53:40",
          winnerRank: 8,
        ),

        Divider(
          height: 0,
          indent: 0,
          endIndent: 0,
          thickness: 0.3,
          color: AppColors.primaryOneNormal,
        ),

        RankBannerWidget(
          winnerImagePath: "assets/images/rank09.png",
          winnerName: "خالد يوسف",
          winnerRecord: "1:58:25",
          winnerRank: 9,
        ),
      ],
    );
  }
}
