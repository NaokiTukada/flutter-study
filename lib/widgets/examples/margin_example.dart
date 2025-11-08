import 'package:flutter/material.dart';

class MarginExample extends StatelessWidget {
  const MarginExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Container(
        margin: const EdgeInsets.all(16.0),
        color: Colors.amber,
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
