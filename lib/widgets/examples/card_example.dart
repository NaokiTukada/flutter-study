import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: const SizedBox(
        width: 200,
        height: 100,
        child: Center(child: Text('Card')),
      ),
    );
  }
}
