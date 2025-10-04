import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/championship_start/controllers/navigate_board_controller.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';
import 'package:video_player/video_player.dart';

class VideoExamplePlayer extends StatefulWidget {
  const VideoExamplePlayer({super.key});

  @override
  State<VideoExamplePlayer> createState() => _VideoExamplePlayerState();
}

class _VideoExamplePlayerState extends State<VideoExamplePlayer> {
  late VideoPlayerController _playerController;
  @override
  void initState() {
    super.initState();
    _playerController =
        VideoPlayerController.asset("assets/videos/AR_example.mp4")
          ..setLooping(true)
          ..initialize().then((_) {
            _playerController.play();

            setState(() {});
          });
  }

  final NavigateBoardController _navigateBoardController =
      NavigateBoardController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        _playerController.value.isInitialized
            ? VideoPlayer(_playerController)
            : Center(child: Text("Video is not loaded!")),

        Positioned(
          top: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 24,
            children: [
              Container(
                width: 81,
                height: 51,
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.secondaryYellowNormalHover,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "المرتبة الحالية",
                        style: context.titleSmall!.copyWith(
                          color: AppColors.naturalLight,
                        ),
                      ),
                      Text(
                        "12",
                        style: context.displayLarge!.copyWith(
                          color: AppColors.naturalLight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/stars_bar.png"),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(
                    width: 1,
                    color: AppColors.primaryOneNormal,
                  ),
                  color: AppColors.naturalNormal,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      _navigateBoardController.navigateToLeaderboard(context);
                    },
                    icon: Image.asset("assets/images/logout-04.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset("assets/images/event_map_checkpoint_01.png"),
        ),
      ],
    );
  }
}
