import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/intensity.dart';
import 'package:medespro/supporting_files/components/section_title.dart';
import 'package:medespro/supporting_files/components/stats_cell.dart';

class WoundDetailView extends StatefulWidget {
  const WoundDetailView({super.key});

  @override
  State<WoundDetailView> createState() => _WoundDetailViewState();
}

class _WoundDetailViewState extends State<WoundDetailView> {
  bool isBlurred = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isBlurred = !isBlurred;
                  });
                },
                child: SizedBox(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: isBlurred
                            ? ImageFiltered(
                                imageFilter:
                                    ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                                child: Image.asset(
                                    'lib/supporting_files/images/wound.png',
                                    fit: BoxFit.fitWidth),
                              )
                            : Image.asset(
                                'lib/supporting_files/images/wound.png',
                                fit: BoxFit.fitWidth,
                              ),
                      ),
                      if (isBlurred)
                        const Center(
                          child: Icon(
                            Icons.visibility_off,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                "Unterschenkel",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                "Ulcus cruris venosum",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 5.0),
              const IntensityComponent(highlighted: 3, count: 5),
              const SizedBox(height: 5.0),
              const Text(
                "Es handelt sich dabei um eine offene Wunde am Unterschenkel. Hauptursache ist eine chronische Venenschwäche.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primary),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.onPrimary),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.center_focus_weak,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text("Wundzustand erfassen"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              const SectionTitleComponent(title: "Zusammenfassung"),
              const SizedBox(height: 5.0),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: const [
                  StatsCellComponent(title: "Größe", value: "7cm²"),
                  StatsCellComponent(
                      title: "Wundheilung", value: "Granulation"),
                  StatsCellComponent(title: "Wundflüssigkeit", value: "mäßig"),
                  StatsCellComponent(title: "Wundumgebung", value: "sensibel"),
                ],
              ),
              const SizedBox(height: 15.0),
              const SectionTitleComponent(title: "Schmerzentwicklung"),
              const SizedBox(height: 5.0),
              Image.asset(
                "lib/supporting_files/images/wound_chart.png",
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 15.0),
              const SectionTitleComponent(title: "Wundort"),
              const SizedBox(height: 5.0),
              Image.asset(
                "lib/supporting_files/images/wound_region.png",
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
