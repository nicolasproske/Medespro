import 'package:flutter/material.dart';

class ChatBubbleComponent extends StatelessWidget {
  final String message;
  final bool isFromMe;

  const ChatBubbleComponent(
      {Key? key, required this.message, required this.isFromMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: 5, left: isFromMe ? 50 : 0, right: isFromMe ? 0 : 50),
      child: Align(
        alignment: isFromMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
          crossAxisAlignment:
              isFromMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: isFromMe
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context)
                        .colorScheme
                        .surfaceVariant
                        .withAlpha(80),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                message,
                style: TextStyle(color: isFromMe ? Colors.white : Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.5),
              child: Text("9:41 Uhr",
                  style: TextStyle(fontSize: 10.0, color: Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}
