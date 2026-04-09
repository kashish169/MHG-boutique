import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

class SplashView extends StatefulWidget {
  static String routeName = '/splash';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() {
    precacheImage(
      AssetImage(AppAssets.newSplash),
      context,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.newSplash,
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
