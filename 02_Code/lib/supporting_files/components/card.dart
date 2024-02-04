import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String title;
  final String caption;
  final String image;
  final String buttonTitle;
  final VoidCallback buttonAction;

  const CardComponent({
    Key? key,
    required this.title,
    required this.caption,
    required this.image,
    required this.buttonTitle,
    required this.buttonAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                Text(
                  caption,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 14.0),
                  softWrap: true,
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: buttonAction,
                  child: Text(buttonTitle),
                ),
              ],
            ),
          ),
          Image.asset(
            "lib/supporting_files/images/$image.png",
            fit: BoxFit.cover,
            width: 100,
          ),
        ],
      ),
    );
  }
}
