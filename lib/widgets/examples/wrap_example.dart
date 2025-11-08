import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        Chip(label: Text('チップ 1')),
        Chip(label: Text('チップ 2')),
        Chip(label: Text('チップ 3')),
        Chip(label: Text('チップ 4')),
      ],
    );
  }
}
