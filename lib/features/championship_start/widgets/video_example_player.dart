import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _playerController.value.isInitialized
            ? VideoPlayer(_playerController)
            : Center(child: Text("Video is not loaded!")),
      ],
    );
  }
}
