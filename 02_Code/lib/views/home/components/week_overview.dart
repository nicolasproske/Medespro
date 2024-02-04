import "package:flutter/material.dart";

class WeekOverviewComponent extends StatelessWidget {
  const WeekOverviewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final int currentDayOfWeek = now.weekday;
    final DateTime startOfWeek =
        now.subtract(Duration(days: currentDayOfWeek - 1));

    const List<String> weekdays = [
      'Mo.',
      'Di.',
      'Mi.',
      'Do.',
      'Fr.',
      'Sa.',
      'So.'
    ];

    return Row(
      children: List<Widget>.generate(7, (index) {
        int dayOfMonth = startOfWeek.add(Duration(days: index)).day;

        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: (index == 6) ? 0 : 6),
            child: Container(
              decoration: BoxDecoration(
                color: currentDayOfWeek == index + 1
                    ? Theme.of(context).colorScheme.primary
                    : null,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Column(
                  children: [
                    Text(
                      weekdays[index],
                      style: TextStyle(
                        color: currentDayOfWeek == index + 1
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '$dayOfMonth',
                      style: TextStyle(
                        color: currentDayOfWeek == index + 1
                            ? Theme.of(context).colorScheme.onPrimary
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
