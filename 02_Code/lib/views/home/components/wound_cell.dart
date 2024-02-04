import "dart:ui";
import "package:flutter/material.dart";
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/wound_detail/wound_detail.dart';
import 'package:medespro/supporting_files/components/intensity.dart';

class WoundCellComponent extends StatelessWidget {
  const WoundCellComponent(
      {required this.bodyPart,
      required this.title,
      required this.description,
      Key? key})
      : super(key: key);

  final String bodyPart;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            useSafeArea: true,
            builder: (BuildContext context) {
              return const SheetWrapperComponent(
                  title: 'Details zur Wunde', child: WoundDetailView());
            },
          );
        },
        child: Padding(
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
                  SizedBox(
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                            child: Image.asset(
                                'lib/supporting_files/images/wound.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Center(
                          child: Icon(
                            Icons.visibility_off,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(bodyPart,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12)),
                        const SizedBox(height: 4),
                        Text(
                          title,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const IntensityComponent(highlighted: 3, count: 5),
                        const SizedBox(height: 8),
                        Text(description,
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSurface)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
