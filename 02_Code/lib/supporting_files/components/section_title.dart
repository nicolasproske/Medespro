import 'package:flutter/material.dart';

class SectionTitleComponent extends StatelessWidget {
  const SectionTitleComponent({required this.title, Key? key})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 20.0),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );
  }
}
