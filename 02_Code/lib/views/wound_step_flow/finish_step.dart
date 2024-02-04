import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/check_text.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class FinishStepView extends StatelessWidget {
  const FinishStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'thumbs_up',
        height: 300,
        title: 'Super, du hast es geschafft!',
        description: 'Deine Wunde ist nun in der App hinterlegt',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckTextComponent(
                text:
                    'Wir erinnern dich nun regelmäßig daran, den Zustand deiner Wunde zu erfassen'),
            SizedBox(height: 8),
            CheckTextComponent(
                text:
                    'Denk daran, keinen Tag auszulassen, sonst verlierst du deinen Streak'),
            SizedBox(height: 8),
            CheckTextComponent(
                text:
                    'Sollte sich der Zustand stark oder plötzlich verschlechtern, zögere nicht, einen Arzt aufzusuchen'),
          ],
        ),
      ),
    ]);
  }
}
