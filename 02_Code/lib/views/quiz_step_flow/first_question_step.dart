import 'package:flutter/material.dart';
import 'package:medespro/views/quiz_step_flow/components/question_step_header.dart';

class FirstQuestionStepView extends StatelessWidget {
  const FirstQuestionStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      QuestionStepHeaderComponent(
          title: 'Welches ist ein wichtiger Aspekt bei der Wundreinigung?',
          description: 'Wähle die richtige Antwort aus.'),
    ]);
  }
}
