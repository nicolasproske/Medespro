import 'package:flutter/material.dart';

class StepHeaderComponent extends StatelessWidget {
  const StepHeaderComponent({
    Key? key,
    this.image,
    this.height = 200,
    required this.title,
    required this.description,
    this.child,
  }) : super(key: key);

  final String? image;
  final double? height;
  final String title;
  final String description;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          if (image != null)
            Image.asset('lib/supporting_files/images/$image.png',
                height: height, fit: BoxFit.cover),
          if (image != null) const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              if (child != null) child!,
            ],
          ),
        ],
      ),
    );
  }
}
