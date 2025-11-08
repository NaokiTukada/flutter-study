import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'こんにちは ',
        style: TextStyle(color: Colors.black, fontSize: 18),
        children: <TextSpan>[
          TextSpan(
            text: '太字',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          TextSpan(text: ' 世界！'),
        ],
      ),
    );
  }
}