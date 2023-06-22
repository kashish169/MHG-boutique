import 'package:flutter/material.dart';
import '../constants/app_assets.dart';

class DeleteIconButton extends StatelessWidget {
  final VoidCallback onTap;
  const DeleteIconButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Image.asset(
        AppAssets.closeFill,
        height: 25,
      ),
    );
  }
}
