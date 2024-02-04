import 'package:flutter/material.dart';

class IntensityComponent extends StatelessWidget {
  const IntensityComponent(
      {required this.highlighted, required this.count, Key? key})
      : super(key: key);

  final int highlighted;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(count, (i) {
        return Icon(
          Icons.bolt,
          size: 16,
          color: i < highlighted ? Colors.red.shade900 : Colors.grey,
        );
      }),
    );
  }
}
