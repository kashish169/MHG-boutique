import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:video_player/video_player.dart';

import '../constants/app_colors.dart';
import 'loading_widget.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay(
      {super.key,
      required this.videoLink,
      required this.height,
      this.isShowBtnShop = false,
      this.title,
      this.value,
      this.shopFun});
  final String videoLink;
  final double height;
  final bool isShowBtnShop;
  final Function()? shopFun;
  final String? title;
  final String? value;

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoLink),
            videoPlayerOptions: VideoPlayerOptions(
              mixWithOthers: true,
            ));
    await videoPlayerController.initialize().then((value) => setState(() {
          chewieController = ChewieController(
            videoPlayerController: videoPlayerController,
            autoPlay: true,
            allowFullScreen: false,
            allowMuting: false,
            showOptions: false,
            showControls: false,
            looping: true,
          );
          videoPlayerController.setVolume(0);
        }));
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  // an arbitrary value, this can be whatever you need it to be
  double videoContainerRatio = 0.5;

  double getScale() {
    double videoRatio = videoPlayerController.value.aspectRatio;

    if (videoRatio < videoContainerRatio) {
      ///for tall videos, we just return the inverse of the controller aspect ratio
      return videoContainerRatio / videoRatio;
    } else {
      ///for wide videos, divide the video AR by the fixed container AR
      ///so that the video does not over scale

      return videoRatio / videoContainerRatio;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            chewieController != null
                ?
                // Container(
                //     color: Colors.white,
                //     width: MediaQuery.of(context).size.width,
                //     height: widget.height,
                //     child: AspectRatio(
                //       aspectRatio: videoContainerRatio,
                //       child: Chewie(
                //         controller: chewieController!,
                //       ),
                //     ),
                //   )
                Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: widget.height,
                    child: Transform.scale(
                      scale: getScale(),
                      child: AspectRatio(
                        aspectRatio: videoContainerRatio,
                        child: Chewie(
                          controller: chewieController!,
                        ),
                      ),
                    ),
                  )
                : Container(
                    color: Colors.white,
                    height: widget.height,
                    width: double.infinity,
                    child: const Center(
                      child: LoadingWidget(),
                    ),
                  ),
            if (widget.isShowBtnShop)
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Colors.white),
                          textAlign: TextAlign.start),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      Text(widget.value ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.white),
                          textAlign: TextAlign.start),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      Container(
                        color: AppColors.dGreen,
                        padding: const EdgeInsets.only(left: 35, right: 35),
                        child: TextButton(
                            onPressed: widget.shopFun ?? () {},
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
        ));
  }
}
