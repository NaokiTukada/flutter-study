import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('子要素 1'),
        SizedBox(width: 16),
        Text('子要素 2'),
      ],
    );
  }
}
