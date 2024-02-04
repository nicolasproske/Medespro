import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/check_text.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class RulesStepView extends StatelessWidget {
  const RulesStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'girl_smartphone',
        height: 300,
        title: 'Das sind die Spielregeln',
        description: 'Wir erklären dir kurz, was dich erwartet',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckTextComponent(
                text:
                    'Für jede Frage hast du 15 Sekunden Zeit. Läuft die Zeit ab, hast du verloren.'),
            SizedBox(height: 8),
            CheckTextComponent(
                text:
                    'Je schneller du bist, desto mehr Quizpunkte erhälst du.'),
            SizedBox(height: 8),
            CheckTextComponent(
                text:
                    'Bei jeder Quizfrage ist immer nur eine einzige Antwort richtig.'),
          ],
        ),
      ),
    ]);
  }
}
