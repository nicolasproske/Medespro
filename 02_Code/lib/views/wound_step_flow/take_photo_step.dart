import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/check_text.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class TakePhotoStepView extends StatelessWidget {
  const TakePhotoStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      StepHeaderComponent(
        image: 'step_take_photo',
        height: 300,
        title: 'Foto aufnehmen',
        description: 'Nehme nun ein Foto deiner Wunde auf',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckTextComponent(
                text:
                    'Halte dein Smartphone aufrecht – so wie du es jetzt gerade auch machst'),
            SizedBox(height: 8),
            CheckTextComponent(
                text:
                    'Nutze keinen Zoom, sondern gehe näher an die Wunde heran'),
            SizedBox(height: 8),
            CheckTextComponent(
                text:
                    'Solltest du Schwierigkeiten haben, lass dir bitte dabei helfen'),
          ],
        ),
      ),
    ]);
  }
}
