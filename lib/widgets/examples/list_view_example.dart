import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('地図'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('アルバム'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('電話'),
        ),
      ],
    );
  }
}
