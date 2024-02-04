import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/section_title.dart';
import 'package:medespro/views/rewards/component/reward_cell.dart';

class RewardsView extends StatelessWidget {
  const RewardsView({super.key});

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
              Row(
                children: [
                  const Spacer(),
                  Image.asset(
                    'lib/supporting_files/images/confetti.png',
                    width: 64,
                    fit: BoxFit.fitWidth,
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          '6.281',
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
                  const Spacer(),
                  Image.asset(
                    'lib/supporting_files/images/confetti.png',
                    width: 64,
                    fit: BoxFit.fitWidth,
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 15),
              const SectionTitleComponent(title: 'Meine Abzeichen'),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: const [
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_crystal.png',
                      title: 'Streaker',
                      description:
                          'Du hast deinen Daily Streak 7 Tage aufrechterhalten.',
                      unlockedAt: '01.02.2024'),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_coins.png',
                      title: 'QP Sammler',
                      description: 'Du hast schon 5.000 Quizpunkte gesammelt.',
                      unlockedAt: '02.02.2024'),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_trophy.png',
                      title: 'Quiz Rookie',
                      description:
                          'Du hast alle Einsteiger-Quizzes absolviert.',
                      unlockedAt: '03.02.2024'),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_strike.png',
                      title: 'Blitzschnell',
                      description:
                          'Du hast ein Quiz in unter einer Minute absolviert.',
                      unlockedAt: '04.02.2024'),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_camera.png',
                      title: 'Say Cheeese!',
                      description: 'Du hast schon 50 Fotos aufgenommen.',
                      unlockedAt: '05.02.2024'),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_flag.png',
                      title: '???',
                      description: 'Was wird sich wohl dahinter verstecken?',
                      unlockedAt: ''),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_flag.png',
                      title: '???',
                      description: 'Was wird sich wohl dahinter verstecken?',
                      unlockedAt: ''),
                  RewardCellComponent(
                      image: 'lib/supporting_files/images/badge_flag.png',
                      title: '???',
                      description: 'Was wird sich wohl dahinter verstecken?',
                      unlockedAt: '')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
