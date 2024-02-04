import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/check_text.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class WoundRegionStepView extends StatelessWidget {
  const WoundRegionStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'step_wound_region',
        title: 'Körperregion der Wunde erfassen',
        description:
            'Wähle bitte auf der nächsten Seite die Körperregion der Wunde aus',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckTextComponent(
                text:
                    'Wähle die Körperregion aus, die am besten zur aktuellen Wunde passt'),
            SizedBox(height: 8),
            CheckTextComponent(
                text: 'Du kannst nur eine Wunde zur selben Zeit erfassen.')
          ],
        ),
      ),
    ]);
  }
}
