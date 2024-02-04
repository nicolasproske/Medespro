import 'package:flutter/material.dart';

class RewardCellComponent extends StatelessWidget {
  final String unlockedAt;
  final String image;
  final String title;
  final String description;

  const RewardCellComponent(
      {Key? key,
      required this.unlockedAt,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                unlockedAt.isEmpty ? Icons.lock_outline : Icons.lock_open,
                color: Theme.of(context).colorScheme.primary,
                size: 14,
              ),
              const SizedBox(width: 5.0),
              Text(
                unlockedAt,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
