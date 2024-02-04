import 'package:flutter/material.dart';

class SheetWrapperComponent extends StatelessWidget {
  const SheetWrapperComponent(
      {required this.title, required this.child, Key? key})
      : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 5.0, bottom: 25.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
