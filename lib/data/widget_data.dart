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
];