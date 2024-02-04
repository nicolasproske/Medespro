import 'package:flutter/material.dart';
import 'package:medespro/views/wound_step_flow/components/icon_text_caption_cell.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class CheckDataStepView extends StatelessWidget {
  const CheckDataStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      StepHeaderComponent(
        height: 300,
        title: 'Daten überprüfen',
        description:
            'Bitte überprüfe nochmal alle Eingaben und die erkannten Details auf Richtigkeit:',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Bearbeiten",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.straighten,
                title: 'Wundgröße',
                caption: 'Länge: 5 cm, Breite: 6 cm, Tiefe: 0,5 cm'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.medication,
                title: 'Wundtaschen',
                caption: 'Tiefe: 0,5 cm, Ausrichtung: 2:00 Uhr'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.healing,
                title: 'Wundheilungsphase',
                caption: 'Granulationsphase'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.lens_blur,
                title: 'Wundgrund',
                caption: 'feuchte Nekrose'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.medical_services,
                title: 'Wundrand',
                caption: 'gerötet'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.location_on,
                title: 'Wundumgebung',
                caption: 'schmerzsensibel'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.water_drop,
                title: 'Wundflüssigkeitsmenge (Exsudat)',
                caption: 'mäßig'),
            const SizedBox(height: 12),
            const IconTextCaptionCellComponent(
                icon: Icons.invert_colors,
                title: 'Farbe der Wundflüssigkeit',
                caption: 'braun')
          ],
        ),
      ),
    ]);
  }
}
