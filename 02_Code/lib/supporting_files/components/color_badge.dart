import 'package:flutter/material.dart';

class ColorBadgeComponent extends StatelessWidget {
  final String value;
  final Color color;

  const ColorBadgeComponent(
      {Key? key, required this.value, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        value,
        style: TextStyle(
          color: color,
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
