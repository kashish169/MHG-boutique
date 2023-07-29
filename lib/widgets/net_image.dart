import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants/app_assets.dart';

class NetImage extends StatelessWidget {
  final String? image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Widget? placeHolder;
  final Color? color;
  final bool isProductCard;

  const NetImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit,
    this.placeHolder,
    this.color,
    this.isProductCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (image == null) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(isProductCard == false ? 12 : 0),
          child: Center(
            child: Image.asset(
              AppAssets.chachLoadImage,

             // fit: BoxFit.cover,
              height: height??20,
              width: width,
            ),
          ),
        );
      } else {
        return CachedNetworkImage(
          height: height,
          width: width,
          imageUrl: image!,
          color: color,
          fit: fit ?? BoxFit.cover,
          placeholder: (context, url) =>
              placeHolder ??
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(isProductCard == false ? 12 : 0),
                child: Center(
                  child: Image.asset(
                    AppAssets.chachLoadImage,
                    height: 20,

                    // fit: BoxFit.contain,
                  ),
                ),
              ),
          errorWidget: (context, url, error) =>
              const Center(child: Icon(Icons.error)),
        );
      }
    });
  }
}
