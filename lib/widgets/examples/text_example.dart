import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, World!',
      style: TextStyle(fontSize: 24),
    );
  }
}
