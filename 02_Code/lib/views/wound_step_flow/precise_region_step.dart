import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class PreciseRegionStepView extends StatelessWidget {
  const PreciseRegionStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'step_precise_region',
        height: 400,
        title: 'Körperregion präzisieren',
        description: 'Grenze die Körperregion nun bitte noch etwas weiter ein',
      ),
    ]);
  }
}
