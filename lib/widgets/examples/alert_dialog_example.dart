import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('アラートダイアログのタイトル'),
          content: const Text('アラートダイアログの説明'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'キャンセル'),
              child: const Text('キャンセル'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('ダイアログを表示'),
    );
  }
}