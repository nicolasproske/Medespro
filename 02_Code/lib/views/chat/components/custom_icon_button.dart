import 'package:flutter/material.dart';

class CustomIconButtonComponent extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const CustomIconButtonComponent(
      {Key? key,
      required this.icon,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        icon: Icon(icon, size: 26, color: color),
        onPressed: onPressed,
      ),
    );
  }
}
