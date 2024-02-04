import 'package:flutter/material.dart';

class StatsCellComponent extends StatelessWidget {
  final String title;
  final String value;

  const StatsCellComponent({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 10.0,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2.5),
          Flexible(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
