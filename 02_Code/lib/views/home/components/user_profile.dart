import 'package:flutter/material.dart';

class UserProfileComponent extends StatelessWidget {
  const UserProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('lib/supporting_files/images/user.png'),
          radius: 28,
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Guten Morgen, Susanne',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const Text(
              'Mitglied seit 01.01.2023',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
