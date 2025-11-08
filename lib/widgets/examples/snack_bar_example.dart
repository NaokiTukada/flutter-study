import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('素晴らしいスナックバー！'),
            action: SnackBarAction(
              label: 'アクション',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
      child: const Text('スナックバーを表示'),
    );
  }
}