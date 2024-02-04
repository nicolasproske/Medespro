import 'package:flutter/material.dart';
import 'package:medespro/views/quiz_list/models/quiz_difficulty.dart';
import 'package:medespro/views/quiz_list/components/quiz_cell.dart';

class QuizListView extends StatelessWidget {
  const QuizListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QuizCellComponent(
                difficulty: QuizDifficultyModel.easy,
                image: "lib/supporting_files/images/plaster.png",
                title: "Hygiene und Wundreinigung",
                description:
                    "Du lernst hier die Bedeutung der Hygiene und die richtige Wundreinigung.",
                isUnlocked: true,
              ),
              SizedBox(height: 10),
              QuizCellComponent(
                difficulty: QuizDifficultyModel.easy,
                image: "lib/supporting_files/images/bandage.png",
                title: "Wunderverbände & -auflagen",
                description:
                    "Du lernst hier die Anwendung verschiedener Wundverbände und -auflagen kennen.",
                isUnlocked: false,
              ),
              SizedBox(height: 10),
              QuizCellComponent(
                difficulty: QuizDifficultyModel.medium,
                image: "lib/supporting_files/images/syringe.png",
                title: "Wundreinigungsmitteln",
                description:
                    "Du lernst hier, wie man das richtige Mittel für verschiedene Arten von Wunden auswählt und sicher anwendet.",
                isUnlocked: false,
              ),
              SizedBox(height: 10),
              QuizCellComponent(
                difficulty: QuizDifficultyModel.advanced,
                image: "lib/supporting_files/images/laying_in_bed.png",
                title: "Druckgeschwüre",
                description:
                    "Du lernst hier Strategien zur Vermeidung von Druckgeschwüren sowie deren angemessene Pflege kennen.",
                isUnlocked: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
