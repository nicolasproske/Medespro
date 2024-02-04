import 'package:flutter/material.dart';

class IconTextCaptionCellComponent extends StatelessWidget {
  const IconTextCaptionCellComponent({
    Key? key,
    required this.icon,
    required this.title,
    required this.caption,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon,
              size: 22, color: Theme.of(context).colorScheme.onPrimary),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              caption,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
