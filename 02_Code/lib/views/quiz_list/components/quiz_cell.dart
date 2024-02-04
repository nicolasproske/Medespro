import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/quiz_list/models/quiz_difficulty.dart';
import 'package:medespro/supporting_files/components/color_badge.dart';
import 'package:medespro/views/quiz_step_flow/quiz_step_flow.dart';

class QuizCellComponent extends StatelessWidget {
  final QuizDifficultyModel difficulty;
  final String image;
  final String title;
  final String description;
  final bool isUnlocked;

  const QuizCellComponent({
    Key? key,
    required this.difficulty,
    required this.image,
    required this.title,
    required this.description,
    required this.isUnlocked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  width: 64,
                  height: 64,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ColorBadgeComponent(
                        value: difficulty.title, color: difficulty.color),
                    const SizedBox(height: 5.0),
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(description),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: !isUnlocked
                    ? null
                    : () => {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              showDragHandle: true,
                              useSafeArea: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  heightFactor: 1.0,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 5),
                                    child: SheetWrapperComponent(
                                      title: title,
                                      child: const QuizStepFlowView(),
                                    ),
                                  ),
                                );
                              })
                        },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(!isUnlocked
                      ? Theme.of(context).colorScheme.surfaceVariant
                      : Theme.of(context).colorScheme.primary),
                  foregroundColor: MaterialStateProperty.all<Color>(!isUnlocked
                      ? Colors.grey
                      : Theme.of(context).colorScheme.onPrimary),
                ),
                child: !isUnlocked
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
