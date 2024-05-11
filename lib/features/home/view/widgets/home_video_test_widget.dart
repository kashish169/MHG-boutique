import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../constants/app_assets.dart';

class HomeVideoTestWidget extends StatefulWidget {
  const HomeVideoTestWidget(
      {super.key, required this.videoLink, required this.height});
  final String videoLink;
  final double height;

  @override
  State<HomeVideoTestWidget> createState() => _HomeVideoTestWidgetState();
}

class _HomeVideoTestWidgetState extends State<HomeVideoTestWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoLink),
    )
      ..initialize().then((value) => setState(() {
            _controller.play();
          }))
      ..addListener(() {
        //  final duration = await _controller.position;
        // if (_controller.position.in == _controller.value.duration.inSeconds) {}
      });
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
      height: widget.height,
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      ),
    );
  }
}
