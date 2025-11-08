import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('パディングされたテキスト'),
      ),
    );
  }
}
