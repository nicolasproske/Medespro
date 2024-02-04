import 'package:flutter/material.dart';

class ToDoCellComponent extends StatelessWidget {
  const ToDoCellComponent(
      {required this.title, required this.description, Key? key})
      : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 3),
                    Text(description,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
