import 'dart:math';
import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/home/components/streak_badge.dart';
import 'package:medespro/views/quiz_list/quiz_list.dart';

class QuizCardComponent extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final bool isLocked;

  const QuizCardComponent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.isLocked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0)),
                child: isLocked
                    ? ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.saturation,
                        ),
                        child: Image.asset(
                            "lib/supporting_files/images/$image.png",
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity),
                      )
                    : Image.asset(
                        "lib/supporting_files/images/$image.png",
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
              ),
              if (!isLocked)
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: StreakBadgeComponent(number: 1 + Random().nextInt(10)),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10.0),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 15.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isLocked
                        ? null
                        : () => {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  showDragHandle: true,
                                  useSafeArea: true,
                                  builder: (BuildContext context) {
                                    return SheetWrapperComponent(
                                        title: title,
                                        child: const QuizListView());
                                  })
                            },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(isLocked
                          ? Theme.of(context).colorScheme.surfaceVariant
                          : Theme.of(context).colorScheme.primary),
                      foregroundColor: MaterialStateProperty.all<Color>(isLocked
                          ? Colors.grey
                          : Theme.of(context).colorScheme.onPrimary),
                    ),
                    child: isLocked
                        ? const Row(
                            children: [
                              Icon(Icons.lock, size: 14),
                              SizedBox(width: 4),
                              Text("Noch gesperrt"),
                            ],
                          )
                        : const Text("Quizzes ansehen"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
