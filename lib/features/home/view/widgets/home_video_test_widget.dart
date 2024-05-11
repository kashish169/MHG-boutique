import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../widgets/loading_widget.dart';

class HomeVideoTestWidget extends StatefulWidget {
  const HomeVideoTestWidget(
      {super.key,
      required this.videoLink,
      required this.height,
      this.startFun,
      this.endVideoFun});
  final String videoLink;
  final double height;
  final Function()? startFun;
  final Function()? endVideoFun;

  @override
  State<HomeVideoTestWidget> createState() => _HomeVideoTestWidgetState();
}

class _HomeVideoTestWidgetState extends State<HomeVideoTestWidget> {
  late VideoPlayerController _controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    if (widget.startFun != null) {
      widget.startFun!();
    }

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoLink),
    )
      ..initialize().then((value) => setState(() {
            isLoading = false;
            _controller.play();
          }))
      ..addListener(() {
        if (_controller.value.isCompleted) {
          if (widget.endVideoFun != null) {
            widget.endVideoFun!();
          }
        }
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
      color: Colors.white,
      height: widget.height,
      child: isLoading
          ? const LoadingWidget()
          : AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
    );
  }
}
