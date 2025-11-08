import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 50,
          width: 50,
          child: const Center(child: Text('50px')),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            height: 50,
            child: const Center(child: Text('Expanded')),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 50,
          width: 50,
          child: const Center(child: Text('50px')),
        ),
      ],
    );
  }
}
