import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/card.dart';
import 'package:medespro/supporting_files/components/section_title.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/chat/chat.dart';
import 'package:medespro/views/copilot/components/chat_cell.dart';

class CopilotView extends StatelessWidget {
  const CopilotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardComponent(
          title: "Fragen über Fragen?",
          caption: "Klara versucht all deine Fragen zu beantworten",
          image: "sitting",
          buttonTitle: "Neuen Chat starten",
          buttonAction: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                showDragHandle: true,
                useSafeArea: true,
                builder: (BuildContext context) {
                  return const SheetWrapperComponent(
                      title: 'Neuer Chat',
                      child:
                          ChatView(name: "Klara", isOnline: true, isNew: true));
                });
          },
        ),
        const SizedBox(height: 15.0),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitleComponent(title: "Chats mit Klara"),
                SizedBox(height: 5.0),
                ChatCellComponent(
                  title: "Nächster Arzttermin",
                  lastMessage: "Klara: Dein nächster Arzttermin...",
                ),
                SizedBox(height: 8.0),
                ChatCellComponent(
                  title: "Neuer Chat",
                  lastMessage: "Klara: Hey, ich bin Klara.",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
