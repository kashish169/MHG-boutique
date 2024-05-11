import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../constants/app_assets.dart';

class HomeVideoTestWidget extends StatefulWidget {
  const HomeVideoTestWidget({super.key});

  @override
  State<HomeVideoTestWidget> createState() => _HomeVideoTestWidgetState();
}

class _HomeVideoTestWidgetState extends State<HomeVideoTestWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      AssetsVideos.testVideo,
    )..initialize().then((value) => setState(() {
          _controller.play();
          // log('BB: ${_controller.value.isPlayingPLAY}');
        }));

    /*
networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    */
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height * 2 / 2.6,
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      ),
    );
  }
}
