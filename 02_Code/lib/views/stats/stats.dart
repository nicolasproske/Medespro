import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/section_title.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/supporting_files/components/stats_cell.dart';

class StatsView extends StatelessWidget {
  const StatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.asset(
              'lib/supporting_files/images/wound_barometer.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 15),
          const SectionTitleComponent(title: 'Schmerzzustand'),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  showDragHandle: true,
                  useSafeArea: true,
                  builder: (BuildContext context) {
                    return SheetWrapperComponent(
                        title: 'Schmerzzustand',
                        child: SingleChildScrollView(
                            child: Column(
                          children: [
                            const SectionTitleComponent(
                                title: 'Gesamtübersicht'),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.asset(
                                'lib/supporting_files/images/wound_matrix_weekly.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        )));
                  });
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color:
                    Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                'lib/supporting_files/images/wound_matrix_daily.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const SectionTitleComponent(title: 'Wundzustand'),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'lib/supporting_files/images/wound_chart_2.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 15),
          const SectionTitleComponent(title: 'Verteilung'),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'lib/supporting_files/images/wound_regions.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 15),
          const SectionTitleComponent(title: 'Lernfortschritt'),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
              borderRadius: BorderRadius.circular(12),
            ),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: const [
                StatsCellComponent(title: "Absolvierte Quizzes", value: "34"),
                StatsCellComponent(title: "Erfolgsquote", value: "62 %"),
                StatsCellComponent(title: "Längste Streak", value: "16 Tage"),
                StatsCellComponent(title: "Badges", value: "15"),
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
