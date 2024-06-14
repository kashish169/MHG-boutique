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
  VideoPlayerController? _controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    if (widget.startFun != null) {
      widget.startFun!();
    }

    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoLink),
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
        ))
      ..initialize().then((value) => setState(() {
            isLoading = false;
            _controller!.play();
            _controller!.setVolume(0);
          }))
      ..addListener(() {
        if (_controller!.value.position == _controller!.value.duration) {
          if (widget.endVideoFun != null) {
            widget.endVideoFun!();
          } else {
            _controller!.seekTo(Duration.zero);
            _controller!.play();
          }
        }
      });
  }

  @override
  void dispose() {
    // setState(() {
    //   _controller?.dispose();
    //   _controller = null;
    // });

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
              aspectRatio: _controller!.value.aspectRatio,
              child: VideoPlayer(_controller!),
            ),
    );
  }
}
