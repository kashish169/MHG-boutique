import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  final VoidCallback onTap;
  const RetryButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Something went wrong',
            style: Theme.of(context).textTheme.headline4,
          ),
          TextButton(
              onPressed: onTap,
              child: const Text(
                'Retry',
              )),
        ],
      ),
    );
  }
}
