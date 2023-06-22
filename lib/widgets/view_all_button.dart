import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  final VoidCallback onTap;
  const ViewAllButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Row(
        children: [
          Text(
            'View All',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(width: 5),
          const Icon(
            Icons.arrow_forward_ios,
            size: 14,
          ),
        ],
      ),
    );
  }
}
