import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('スナックバーを表示'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('これはスナックバーです！'),
            action: SnackBarAction(
              label: '元に戻す',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}
