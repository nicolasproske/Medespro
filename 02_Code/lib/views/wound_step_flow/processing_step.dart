import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/step_header.dart';

class ProcessingStepView extends StatefulWidget {
  const ProcessingStepView({super.key});

  @override
  State<ProcessingStepView> createState() => _ProcessingStepViewState();
}

class _ProcessingStepViewState extends State<ProcessingStepView> {
  double _progressValue = 0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 350), (Timer timer) {
      if (_progressValue < 1.0) {
        setState(() {
          _progressValue += 0.1;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      StepHeaderComponent(
        image: 'step_processing',
        title: 'Bitte warte einen Augenblick...',
        description:
            'Unsere künstliche Intelligenz analysiert nun deine Wunde, sodass du dir Zeit sparst, weitere Details einzugeben',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: _progressValue),
              duration: const Duration(milliseconds: 100),
              builder: (context, double value, child) {
                return LinearProgressIndicator(
                  value: value,
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(2.5),
                );
              },
            ),
            if (_progressValue >= 1.0) ...[
              const SizedBox(height: 20),
              Center(
                  child: Text('Analyse erfolgreich',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold))),
            ],
          ],
        ),
      ),
    ]);
  }
}
