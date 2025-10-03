import 'package:rehab_roshan_project/features/home/widgets/winner_avatar_widget.dart';

class ChampionPlatformController {
  List<Map<String, WinnerAvatarWidget>> winnersList = [
    {
      // winners rank
      "1": WinnerAvatarWidget(
        leftPosition: 165.2,
        rightPosition: 161.76,
        topPosition: 51.11,
        bottomPosition: 205.85,
        winnerName: "محمد سلطان",
        winnerAvatarPath: "assets/images/winner_01.png",
        isFirst: true,
      ),
      "2": WinnerAvatarWidget(
        leftPosition: 55.84,
        rightPosition: 271.13,
        topPosition: 100.99,
        bottomPosition: 155.97,
        winnerName: "سارة إبراهيم",
        winnerAvatarPath: "assets/images/winner_02.png",
      ),
      "3": WinnerAvatarWidget(
        leftPosition: 272,
        rightPosition: 54.96,
        topPosition: 118.99,
        bottomPosition: 137.97,
        winnerName: "محمد سلطان",
        winnerAvatarPath: "assets/images/winner_03.png",
      ),
    },

    {
      // winners rank
      "1": WinnerAvatarWidget(
        leftPosition: 165.2,
        rightPosition: 161.76,
        topPosition: 51.11,
        bottomPosition: 205.85,
        winnerName: "خالد فهد",
        winnerAvatarPath: "assets/images/winner_01.png",
        isFirst: true,
      ),
      "2": WinnerAvatarWidget(
        leftPosition: 55.84,
        rightPosition: 271.13,
        topPosition: 100.99,
        bottomPosition: 155.97,
        winnerName: "ريف سالم",
        winnerAvatarPath: "assets/images/winner_02.png",
      ),
      "3": WinnerAvatarWidget(
        leftPosition: 272,
        rightPosition: 54.96,
        topPosition: 118.99,
        bottomPosition: 137.97,
        winnerName: "ماجد مشاري",
        winnerAvatarPath: "assets/images/winner_03.png",
      ),
    },
  ];
}
