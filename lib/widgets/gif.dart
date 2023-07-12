import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StillGIF extends StatefulWidget {
  final ImageProvider image;
  final double width;
  final double height;

  StillGIF({
    Key? key,
    required this.image,
    required this.width,
    required this.height,
  }) : super(key: key);

  factory StillGIF.asset(
    String image, {
    Key? key,
    required double width,
    required double height,
  }) =>
      StillGIF(
        key: key,
        image: AssetImage(image),
        width: width,
        height: height,
      );

  factory StillGIF.file(
    String image, {
    Key? key,
    required double width,
    required double height,
  }) =>
      StillGIF(
        key: key,
        image: FileImage(File(image)),
        width: width,
        height: height,
      );

  factory StillGIF.network(
    String image, {
    Key? key,
    required double width,
    required double height,
  }) =>
      StillGIF(
        key: key,
        image: NetworkImage(image),
        width: width,
        height: height,
      );

  @override
  State<StillGIF> createState() => _StillGIFState();
}

class _StillGIFState extends State<StillGIF> {
  RawImage? image;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Uint8List? data;
      if (widget.image is NetworkImage) {
        final resolved = Uri.base.resolve((widget.image as NetworkImage).url);
        final request = await HttpClient().getUrl(resolved);
        final HttpClientResponse response = await request.close();
        data = await consolidateHttpClientResponseBytes(response);
      } else if (widget.image is AssetImage) {
        final key =
            await (widget.image as AssetImage).obtainKey(ImageConfiguration());
        data = (await key.bundle.load(key.name)).buffer.asUint8List();
      } else if (widget.image is FileImage) {
        data = await (widget.image as FileImage).file.readAsBytes();
      }
      final codec =
          await PaintingBinding.instance.instantiateImageCodecFromBuffer(
        await ImmutableBuffer.fromUint8List(
          data!.buffer.asUint8List(),
        ),
      );
      FrameInfo frame = await codec.getNextFrame();
      setState(() {
        image = RawImage(
          image: frame.image,
          height: widget.height,
          width: widget.width,
          fit: BoxFit.cover,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return image ??
        SizedBox(
          width: widget.width,
          height: widget.height,
        );
  }
}
