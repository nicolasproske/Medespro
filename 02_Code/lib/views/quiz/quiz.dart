import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/card.dart';
import 'package:medespro/supporting_files/components/section_title.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/quiz/components/quiz_card.dart';
import 'package:medespro/views/rewards/rewards.dart';

class QuizView extends StatelessWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardComponent(
          title: "Mach' weiter so!",
          caption: "Das nächste Quiz wartet schon auf dich.",
          image: "gifts",
          buttonTitle: "Abzeichen ansehen",
          buttonAction: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                showDragHandle: true,
                useSafeArea: true,
                builder: (BuildContext context) {
                  return const SheetWrapperComponent(
                      title: 'Deine Abzeichen', child: RewardsView());
                });
          },
        ),
        const SizedBox(height: 15.0),
        const SectionTitleComponent(title: "Gut für den Einstieg"),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuizCardComponent(
                image: "pattern_1",
                title: "Grundlagen der guten Wundpflege",
                description:
                    "Lerne verschiedene Arten der hygienischen Pflege kennen.",
                isLocked: false,
              ),
              SizedBox(width: 15.0),
              QuizCardComponent(
                image: "pattern_2",
                title: "Die wichtigsten Fachbegriffe",
                description:
                    "Verstehe die Bedeutung der wichtigsten Fachbegriffe.",
                isLocked: true,
              ),
              SizedBox(width: 15.0),
              QuizCardComponent(
                image: "pattern_3",
                title: "Entdecke alle Arten von Wunden",
                description: "Werde zum Kenner der unterschiedlichsten Wunden.",
                isLocked: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
