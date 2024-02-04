import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/step_header.dart';
import 'package:medespro/views/wound_step_flow/components/wound_type_picker.dart';

class WoundTypeStepView extends StatelessWidget {
  const WoundTypeStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      StepHeaderComponent(
        image: 'step_wound_type',
        title: 'Wundart auswählen',
        description: 'Wähle bitte die zutreffende Wundart aus',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WoundTypePickerComponent(),
            const SizedBox(height: 10),
            Text(
              'Es handelt sich dabei um eine offene Wunde am Unterschenkel. Hauptursache ist eine chronische Venenschwäche.',
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            )
          ],
        ),
      ),
    ]);
  }
}
