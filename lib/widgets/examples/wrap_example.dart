import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        Chip(label: Text('Hamilton')),
        Chip(label: Text('Lafayette')),
        Chip(label: Text('Mulligan')),
        Chip(label: Text('Laurens')),
        Chip(label: Text('Burr')),
        Chip(label: Text('Washington')),
      ],
    );
  }
}
