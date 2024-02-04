import 'package:flutter/material.dart';
import 'package:medespro/views/quiz_step_flow/components/answer_cell.dart';

class QuestionSelectionComponent extends StatefulWidget {
  final Function() onAnswerSelected;

  const QuestionSelectionComponent({Key? key, required this.onAnswerSelected})
      : super(key: key);

  @override
  State<QuestionSelectionComponent> createState() =>
      _QuestionSelectionComponentState();
}

class _QuestionSelectionComponentState
    extends State<QuestionSelectionComponent> {
  bool showSolution = false;
  String selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!showSolution || selectedAnswer == "A")
          AnswerCellComponent(
            iconText: "A",
            answer:
                "Der Verband sollte fest angebracht werden, um Rutschen zu vermeiden.",
            showSolution: showSolution,
            selectedAnswer: selectedAnswer,
            onSelect: (String answer) {
              setState(() {
                selectedAnswer = answer;
                showSolution = true;
              });
              widget.onAnswerSelected();
            },
          ),
        const SizedBox(height: 10),
        if (!showSolution || selectedAnswer == "B")
          AnswerCellComponent(
            iconText: "B",
            answer:
                "Die Wunde sollte nicht gereinigt werden, um die Heilung nicht zu stören.",
            showSolution: showSolution,
            selectedAnswer: selectedAnswer,
            onSelect: (String answer) {
              setState(() {
                selectedAnswer = answer;
                showSolution = true;
              });
              widget.onAnswerSelected();
            },
          ),
        const SizedBox(height: 5),
        if (!showSolution || selectedAnswer == "C")
          AnswerCellComponent(
            iconText: "C",
            answer:
                "Der Zustand der Wunde und der Haut sollte überprüft werden.",
            showSolution: showSolution,
            selectedAnswer: selectedAnswer,
            solutionText:
                "Ein regelmäßiger Überprüfungsprozess während des Verbandwechsels ermöglicht es, Veränderungen im Heilungsprozess frühzeitig zu erkennen und angemessen darauf zu reagieren zu können.",
            onSelect: (String answer) {
              setState(() {
                selectedAnswer = answer;
                showSolution = true;
              });
              widget.onAnswerSelected();
            },
          ),
      ],
    );
  }
}
