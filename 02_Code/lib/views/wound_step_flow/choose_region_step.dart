import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class ChooseRegionStepView extends StatelessWidget {
  const ChooseRegionStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'step_choose_region',
        height: 400,
        title: 'Körperregion auswählen',
        description:
            'Wähle bitte im obigen Schaubild die zutreffende Körperregion aus',
      ),
    ]);
  }
}
