import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class CustomDotSwiperPaginationBuilder extends SwiperPlugin {
  final Color? activeColor;
  final Color? color;
  final double activeSize;
  final double size;
  final double space;
  final Key? key;

  const CustomDotSwiperPaginationBuilder({
    this.activeColor,
    this.color,
    this.key,
    this.size = 5.0,
    this.activeSize = 5.0,
    this.space = 3.0,
  });

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    if (config.itemCount > 20) {
      log(
        'The itemCount is too big, we suggest use FractionPaginationBuilder '
        'instead of DotSwiperPaginationBuilder in this situation',
      );
    }
    var activeColor = this.activeColor;
    var color = this.color;

    if (activeColor == null || color == null) {
      final themeData = Theme.of(context);
      activeColor = this.activeColor ?? themeData.primaryColor;
      color = this.color ?? themeData.scaffoldBackgroundColor;
    }

    if (config.indicatorLayout != PageIndicatorLayout.NONE &&
        config.layout == SwiperLayout.DEFAULT) {
      return PageIndicator(
        count: config.itemCount,
        controller: config.pageController!,
        layout: config.indicatorLayout,
        size: size,
        activeColor: activeColor,
        color: color,
        space: space,
      );
    }

    final list = <Widget>[];

    final itemCount = config.itemCount;
    final activeIndex = config.activeIndex;

    for (var i = 0; i < itemCount; ++i) {
      final active = i == activeIndex;
      list.add(Container(
        key: Key('pagination_$i'),
        margin: EdgeInsets.all(space),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: active ? activeColor : color,
              border: Border.all(
                color: AppColors.primary,
              )),
          width: active ? activeSize * 3 : size * 3,
          height: active ? activeSize : size,
        ),
      ));
    }

    if (config.scrollDirection == Axis.vertical) {
      return Column(
        key: key,
        mainAxisSize: MainAxisSize.min,
        children: list,
      );
    } else {
      return Row(
        key: key,
        mainAxisSize: MainAxisSize.min,
        children: list,
      );
    }
  }
}
