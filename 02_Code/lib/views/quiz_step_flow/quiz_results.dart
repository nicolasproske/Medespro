import 'package:flutter/material.dart';

class QuizResultsView extends StatelessWidget {
  const QuizResultsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                '200',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Erspielte Quizpunkte',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            'lib/supporting_files/images/gifts.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Das war doch super!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
                'Das lief doch wie am Schnürchen. Worauf wartest du noch? Auf zum nächsten Quiz!'),
          ],
        ),
      ],
    );
  }
}
