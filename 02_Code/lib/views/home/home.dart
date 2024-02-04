import 'package:flutter/material.dart';
import 'package:medespro/views/home/components/week_overview.dart';
import 'package:medespro/supporting_files/components/section_title.dart';
import 'package:medespro/views/home/components/todo_cell.dart';
import 'package:medespro/views/home/components/wound_cell.dart';
import 'package:medespro/views/home/components/user_profile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        UserProfileComponent(),
        SizedBox(height: 10),
        WeekOverviewComponent(),
        SizedBox(height: 10),
        SectionTitleComponent(title: 'Das steht heute an'),
        ToDoCellComponent(
          title: 'Wunddokumentation',
          description:
              'Erfasse den heutigen Zustand deiner chronischen Wunden.',
        ),
        ToDoCellComponent(
          title: "Arzttermin",
          description:
              "Du hast heute um 9:45 Uhr einen Termin bei Dr. med. Müller.",
        ),
        SectionTitleComponent(title: 'Deine Wunden'),
        WoundCellComponent(
          bodyPart: 'Unterschenkel',
          title: 'Ulcus cruris venosum',
          description:
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.',
        ),
      ],
    );
  }
}
