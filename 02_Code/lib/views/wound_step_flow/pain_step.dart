import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class PainStepView extends StatefulWidget {
  const PainStepView({super.key});

  @override
  State<PainStepView> createState() => _PainStepViewState();
}

class _PainStepViewState extends State<PainStepView> {
  double _painValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      StepHeaderComponent(
        image: 'step_pain',
        title: 'Schmerz bestimmen',
        description:
            'Wie stark schmerzt die Wunde auf einer Skala von 1 bis 10, wobei die Zahl 1 "keine Schmerzen" repräsentiert?',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Slider(
              min: 1.0,
              max: 10.0,
              value: _painValue,
              divisions: 10,
              label: '${_painValue.round()}',
              onChanged: (value) {
                setState(() {
                  _painValue = value;
                });
              },
            )
          ],
        ),
      ),
    ]);
  }
}
