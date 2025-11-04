import 'package:flutter/material.dart';
import '../models/widget_item.dart';

final List<WidgetItem> widgetData = [
  WidgetItem(
    name: 'Container',
    description: '描画、配置、サイズ調整を組み合わせた便利なウィジェットです。',
    category: 'レイアウト',
    icon: Icons.check_box_outline_blank,
    codeSnippet: '''
Container(
  width: 100,
  height: 100,
  color: Colors.blue,
  child: const Center(child: Text('Container')),
)
''',
  ),
  WidgetItem(
    name: 'Text',
    description: '単一のスタイルを持つテキストを表示します。',
    category: '基本',
    icon: Icons.text_fields,
    codeSnippet: '''
const Text(
  'Hello, World!',
  style: TextStyle(fontSize: 24),
)
''',
  ),
  WidgetItem(
    name: 'Column',
    description: '子ウィジェットを垂直方向に並べて表示します。',
    category: 'レイアウト',
    icon: Icons.view_column,
    codeSnippet: '''
const Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Child 1'),
    Text('Child 2'),
  ],
)
''',
  ),
  WidgetItem(
    name: 'Row',
    description: '子ウィジェットを水平方向に並べて表示します。',
    category: 'レイアウト',
    icon: Icons.view_agenda_outlined,
    codeSnippet: '''
const Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Child 1'),
    SizedBox(width: 16),
    Text('Child 2'),
  ],
)
''',
  ),
  WidgetItem(
    name: 'Stack',
    description: '子ウィジェットを重ねて表示します。',
    category: 'レイアウト',
    icon: Icons.layers,
    codeSnippet: '''
Stack(
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 90,
      height: 90,
      color: Colors.green,
    ),
    Container(
      width: 80,
      height: 80,
      color: Colors.blue,
    ),
  ],
)
''',
  ),
  WidgetItem(
    name: 'ListView',
    description: 'スクロール可能なリストを表示します。',
    category: 'レイアウト',
    icon: Icons.list,
    codeSnippet: '''
ListView(
  children: const <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
    ),
    ListTile(
      leading: Icon(Icons.photo_album),
      title: Text('Album'),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text('Phone'),
    ),
  ],
)
''',
  ),
  WidgetItem(
    name: 'Image',
    description: '画像を表示します。',
    category: '基本',
    icon: Icons.image,
    codeSnippet: '''
Image.network(
  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
)
''',
  ),
  WidgetItem(
    name: 'Icon',
    description: 'アイコンを表示します。',
    category: '基本',
    icon: Icons.insert_emoticon,
    codeSnippet: '''
const Icon(
  Icons.favorite,
  color: Colors.pink,
  size: 24.0,
  semanticLabel: 'Text to announce in accessibility modes',
)
''',
  ),
  WidgetItem(
    name: 'Card',
    description: '角が丸く、影が付いたマテリアルデザインのカードです。',
    category: 'レイアウト',
    icon: Icons.card_giftcard,
    codeSnippet: '''
Card(
  child: const SizedBox(
    width: 200,
    height: 100,
    child: Center(child: Text('Card')),
  ),
)
''',
  ),
  WidgetItem(
    name: 'ElevatedButton',
    description: '影が付いたマテリアルデザインのボタンです。',
    category: '入力',
    icon: Icons.smart_button,
    codeSnippet: '''
ElevatedButton(
  onPressed: () {},
  child: const Text('ElevatedButton'),
)
''',
  ),
  WidgetItem(
    name: 'TextField',
    description: 'テキスト入力フィールドです。',
    category: '入力',
    icon: Icons.edit,
    codeSnippet: '''
const TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'TextField',
  ),
)
''',
  ),
  WidgetItem(
    name: 'CircularProgressIndicator',
    description: '円形プログレスインジケーターです。',
    category: '表示',
    icon: Icons.refresh,
    codeSnippet: '''
const CircularProgressIndicator()
''',
  ),
  WidgetItem(
    name: 'Slider',
    description: 'スライダーで値を選択します。',
    category: '入力',
    icon: Icons.linear_scale,
    codeSnippet: '''
Slider(
  value: _currentSliderValue,
  max: 100,
  divisions: 5,
  label: _currentSliderValue.round().toString(),
  onChanged: (double value) {
    setState(() {
      _currentSliderValue = value;
    });
  },
)
''',
  ),
  WidgetItem(
    name: 'Switch',
    description: 'オン/オフを切り替えるスイッチです。',
    category: '入力',
    icon: Icons.switch_camera,
    codeSnippet: '''
Switch(
  value: _isSwitched,
  onChanged: (value) {
    setState(() {
      _isSwitched = value;
    });
  },
)
''',
  ),
  WidgetItem(
    name: 'SnackBar',
    description: '画面下部に一時的なメッセージを表示します。',
    category: '表示',
    icon: Icons.message,
    codeSnippet: '''
ElevatedButton(
  child: const Text('Show SnackBar'),
  onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('This is a SnackBar!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {},
        ),
      ),
    );
  },
)
''',
  ),
  WidgetItem(
    name: 'AlertDialog',
    description: 'ユーザーに通知や確認を求めるダイアログです。',
    category: '表示',
    icon: Icons.add_alert,
    codeSnippet: '''
ElevatedButton(
  child: const Text('Show Dialog'),
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('This is the content of the alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  },
)
''',
  ),
  WidgetItem(
    name: 'Wrap',
    description: '子ウィジェットを折り返して表示します。',
    category: 'レイアウト',
    icon: Icons.wrap_text,
    codeSnippet: '''
Wrap(
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
)
''',
  ),
  WidgetItem(
    name: 'Checkbox',
    description: 'チェックボックスで項目を選択します。',
    category: '入力',
    icon: Icons.check_box,
    codeSnippet: '''
Checkbox(
  value: _isChecked,
  onChanged: (bool? value) {
    setState(() {
      _isChecked = value!;
    });
  },
)
''',
  ),
];