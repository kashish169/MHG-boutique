import 'package:flutter/material.dart';
import '../constants/app_assets.dart';

class DeleteIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  const DeleteIconButton({super.key, required this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Image.asset(
        AppAssets.closeFill,
        height: height ?? 19,
      ),
    );
  }
}
