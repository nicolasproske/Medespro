import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/copilot/copilot.dart';
import 'package:medespro/views/home/components/streak_badge.dart';
import 'package:medespro/views/quiz/quiz.dart';
import 'package:medespro/views/stats/stats.dart';
import 'package:medespro/views/wound_step_flow/wound_step_flow.dart';
import 'package:medespro/views/content/models/navigation_item.dart';
import 'package:medespro/views/home/home.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  int _selectedIndex = 0;

  final List<NavigationItemModel> _navigationItems = [
    NavigationItemModel(
        icon: Icons.home, label: 'Übersicht', content: const HomeView()),
    NavigationItemModel(
        icon: Icons.reviews, label: 'Copilot', content: const CopilotView()),
    NavigationItemModel(
        icon: Icons.sports_esports, label: 'Quiz', content: const QuizView()),
    NavigationItemModel(
        icon: Icons.donut_large,
        label: 'Statistiken',
        content: const StatsView()),
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'medespro',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          actions: [
            const StreakBadgeComponent(number: 2),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: _navigationItems[_selectedIndex].content)),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: _selectedIndex,
        destinations: _navigationItems
            .map((item) => NavigationDestination(
                  icon: Icon(item.icon),
                  selectedIcon: item.selectedIcon != null
                      ? Icon(item.selectedIcon)
                      : null,
                  label: item.label,
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            useSafeArea: true,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: 1.0,
                child: Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  child: const SheetWrapperComponent(
                    title: "Wunde erfassen",
                    child: WoundStepFlowView(),
                  ),
                ),
              );
            },
          );
        },
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
