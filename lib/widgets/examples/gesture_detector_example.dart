import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('タップされました！')),
        );
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        color: _isPressed ? Colors.blue.withOpacity(0.5) : Colors.blue,
        child: const Center(child: Text('タップしてね')),
      ),
    );
  }
}
