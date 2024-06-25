import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/loading_widget.dart';

class HomeVideoTestWidget extends StatefulWidget {
  const HomeVideoTestWidget(
      {super.key,
      required this.videoLink,
      required this.height,
      this.startFun,
      this.endVideoFun,
      this.isShowBtnShop = false,
      this.title,
      this.value});
  final String videoLink;
  final double height;
  final Function()? startFun;
  final Function()? endVideoFun;
  final bool isShowBtnShop;
  final String? title;
  final String? value;

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
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            height: widget.height,
            child: isLoading
                ? const LoadingWidget()
                : AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  ),
          ),
          if (widget.isShowBtnShop)
            Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title ?? '',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text(
                      widget.value ?? '',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                      color: AppColors.dGreen,
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'SHOP NOW'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(fontSize: 13, color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ],
                ))
        ],
      ),
    );
  }
}
