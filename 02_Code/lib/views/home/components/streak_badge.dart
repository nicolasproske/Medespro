import 'package:flutter/material.dart';

class StreakBadgeComponent extends StatelessWidget {
  const StreakBadgeComponent({Key? key, required this.number})
      : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'lib/supporting_files/images/star.png',
            width: 16,
            height: 16,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(width: 6),
          Text(
            '$number',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
