import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/components/sheet_wrapper.dart';
import 'package:medespro/views/chat/chat.dart';

class ChatCellComponent extends StatelessWidget {
  final String title;
  final String lastMessage;

  const ChatCellComponent({
    Key? key,
    required this.title,
    required this.lastMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            useSafeArea: true,
            builder: (BuildContext context) {
              return SheetWrapperComponent(
                  title: title,
                  child: ChatView(
                      name: "Klara",
                      isOnline: true,
                      isNew: title == "Neuer Chat"));
            });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage:
                  AssetImage('lib/supporting_files/images/klara.png'),
              radius: 24.0,
            ),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Vor 2 Minuten",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  lastMessage,
                  style: const TextStyle(fontSize: 14),
                  maxLines: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
