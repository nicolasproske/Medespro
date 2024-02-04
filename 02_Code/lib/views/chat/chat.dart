import 'package:flutter/material.dart';
import 'package:medespro/views/chat/components/chat_bubble.dart';
import 'package:medespro/views/chat/components/custom_icon_button.dart';

class ChatView extends StatelessWidget {
  final String name;
  final bool isOnline;
  final bool isNew;

  const ChatView(
      {Key? key,
      required this.name,
      required this.isOnline,
      required this.isNew})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage:
                    AssetImage('lib/supporting_files/images/klara.png'),
                radius: 24.0,
              ),
              const SizedBox(width: 5.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: isOnline ? Colors.green : Colors.red.shade900,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Text(isOnline ? "Online" : "Offline"),
                    ],
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ChatBubbleComponent(
                      message: "Hey, ich bin Klara.", isFromMe: false),
                  if (!isNew) ...[
                    const ChatBubbleComponent(
                        message: "Wie kann ich dir heute helfen?",
                        isFromMe: false),
                    const ChatBubbleComponent(
                        message: "Wann habe ich meinen nächsten Arzttermin?",
                        isFromMe: true),
                    const ChatBubbleComponent(
                        message:
                            "Gerne, warte bitte einen kleinen Moment. Ich sehe für dich nach... 🔍",
                        isFromMe: false),
                    const ChatBubbleComponent(
                        message:
                            "Dein nächster Arzttermin ist am 5. Februar 2024 um 09:41 Uhr.",
                        isFromMe: false),
                  ]
                ],
              ),
            ),
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Schreibe Klara...",
                      filled: true,
                      fillColor: Theme.of(context)
                          .colorScheme
                          .surfaceVariant
                          .withAlpha(80),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(12.0)),
                ),
              ),
              const SizedBox(width: 5.0),
              CustomIconButtonComponent(
                icon: Icons.reply,
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
              ),
              const SizedBox(width: 5.0),
              CustomIconButtonComponent(
                icon: Icons.mic_rounded,
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
