import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/color_badge.dart';

class AnswerCellComponent extends StatelessWidget {
  final String iconText;
  final String answer;
  final bool showSolution;
  final String selectedAnswer;
  final String solutionText;
  final ValueChanged<String> onSelect;

  const AnswerCellComponent({
    Key? key,
    required this.iconText,
    required this.answer,
    required this.showSolution,
    required this.selectedAnswer,
    this.solutionText = "",
    required this.onSelect,
  }) : super(key: key);

  bool get isCorrect => iconText == selectedAnswer && solutionText.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelect(iconText),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: showSolution
                      ? (isCorrect ? Colors.green : Colors.red.shade900)
                      : Colors.grey.withOpacity(0.2),
                  width: 1),
            ),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(iconText,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 12),
                Expanded(child: Text(answer)),
              ],
            ),
          ),
          if (showSolution)
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ColorBadgeComponent(
                          value: isCorrect
                              ? "Richtige Antwort"
                              : "Falsche Antwort",
                          color:
                              isCorrect ? Colors.green : Colors.red.shade900),
                      const SizedBox(width: 8),
                      ColorBadgeComponent(
                          value: isCorrect ? "+200 QP" : "+0 QP",
                          color: Theme.of(context).colorScheme.primary),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(solutionText.isEmpty
                      ? "Keine Sorge, vielleicht klappt es beim nächsten Mal!"
                      : solutionText),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
