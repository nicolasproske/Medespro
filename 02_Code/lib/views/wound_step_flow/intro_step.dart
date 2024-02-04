import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/check_text.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class IntroStepView extends StatelessWidget {
  const IntroStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'step_intro',
        height: 300,
        title: 'Neue Wunde erfassen',
        description: 'Erfasse über den Assistenten eine neue Wunde',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckTextComponent(
                text:
                    'Wir führen dich wie immer Schritt für Schritt durch den Prozess'),
            SizedBox(height: 8),
            CheckTextComponent(
                text: 'Halte die Kamera bei Aufnahmen immer senkrecht'),
            SizedBox(height: 8),
            CheckTextComponent(
                text: 'Fülle die Details so präzise wie möglich aus'),
          ],
        ),
      ),
    ]);
  }
}
