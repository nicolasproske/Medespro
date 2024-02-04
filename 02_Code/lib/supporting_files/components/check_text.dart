import 'package:flutter/material.dart';

class CheckTextComponent extends StatelessWidget {
  const CheckTextComponent({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_circle_rounded,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 12),
        Flexible(
          child: Text(
            text,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ],
    );
  }
}
