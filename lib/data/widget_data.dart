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
  child: const Center(child: Text('コンテナ')),
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
  'こんにちは、世界！',
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
    Text('子要素 1'),
    Text('子要素 2'),
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
    Text('子要素 1'),
    SizedBox(width: 16),
    Text('子要素 2'),
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
      child: const Center(child: Text('前面')),
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
  semanticLabel: 'アクセシビリティモードでアナウンスするテキスト',
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
    child: Center(child: Text('カード')),
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
  child: const Text('ボタン'),
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
    labelText: 'テキストフィールド',
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
    name: 'Wrap',
    description: '子ウィジェットを次の行に折り返して表示します。',
    category: 'レイアウト',
    icon: Icons.wrap_text,
    codeSnippet: '''
Wrap(
  spacing: 8.0, // gap between adjacent chips
  runSpacing: 4.0, // gap between lines
  children: <Widget>[
    Chip(label: Text('チップ 1')),
    Chip(label: Text('チップ 2')),
    Chip(label: Text('チップ 3')),
    Chip(label: Text('チップ 4')),
  ],
)
''',
  ),
  WidgetItem(
    name: 'Slider',
    description: 'スライダーで値を選択します。',
    category: '入力',
    icon: Icons.linear_scale,
    codeSnippet: '''
Slider(
  value: 20,
  max: 100,
  divisions: 5,
  label: '値',
  onChanged: (double value) {},
)
''',
  ),
  WidgetItem(
    name: 'AlertDialog',
    description: 'アラートダイアログを表示します。',
    category: '表示',
    icon: Icons.add_alert,
    codeSnippet: '''
ElevatedButton(
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
)
''',
  ),
  WidgetItem(
    name: 'SnackBar',
    description: 'スナックバーを表示します。',
    category: '表示',
    icon: Icons.announcement,
    codeSnippet: '''
ElevatedButton(
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
)
''',
  ),
  WidgetItem(
    name: 'RichText',
    description: '複数のスタイルを持つテキストを表示します。',
    category: '基本',
    icon: Icons.text_format,
    codeSnippet: '''
RichText(
  text: const TextSpan(
    text: 'こんにちは ',
    style: TextStyle(color: Colors.black, fontSize: 18),
    children: <TextSpan>[
      TextSpan(
        text: '太字',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      TextSpan(text: ' 世界！'),
    ],
  ),
)
''',
  ),
  WidgetItem(
    name: 'CircleAvatar',
    description: '円形のアバターを表示します。',
    category: '基本',
    icon: Icons.account_circle,
    codeSnippet: '''
CircleAvatar(
  backgroundColor: Colors.blue,
  child: const Text('アバター'),
)
''',
  ),
  WidgetItem(
    name: 'DataTable',
    description: 'テーブルを表示します。',
    category: 'レイアウト',
    icon: Icons.table_chart,
    codeSnippet: '''
DataTable(
  columns: const <DataColumn>[
    DataColumn(
      label: Text(
        '名前',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
    DataColumn(
      label: Text(
        '年齢',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
    DataColumn(
      label: Text(
        '役割',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
  ],
  rows: const <DataRow>[
    DataRow(
      cells: <DataCell>[
        DataCell(Text('サラ')),
        DataCell(Text('19')),
        DataCell(Text('学生')),
      ],
    ),
    DataRow(
      cells: <DataCell>[
        DataCell(Text('ジャニン')),
        DataCell(Text('43')),
        DataCell(Text('教授')),
      ],
    ),
    DataRow(
      cells: <DataCell>[
        DataCell(Text('ウィリアム')),
        DataCell(Text('27')),
        DataCell(Text('准教授')),
      ],
    ),
  ],
)
''',
  ),
  WidgetItem(
    name: 'Checkbox',
    description: 'チェックボックスを表示します。',
    category: '入力',
    icon: Icons.check_box,
    codeSnippet: '''
Checkbox(
  checkColor: Colors.white,
  value: true,
  onChanged: (bool? value) {},
)
''',
  ),
  WidgetItem(
    name: 'Radio',
    description: 'ラジオボタンを表示します。',
    category: '入力',
    icon: Icons.radio_button_checked,
    codeSnippet: '''
Column(
  children: <Widget>[
    ListTile(
      title: const Text('選択肢 1'),
      leading: Radio<String>(
        value: '選択肢 1',
        groupValue: '選択肢 1',
        onChanged: (String? value) {},
      ),
    ),
    ListTile(
      title: const Text('選択肢 2'),
      leading: Radio<String>(
        value: '選択肢 2',
        groupValue: '選択肢 1',
        onChanged: (String? value) {},
      ),
    ),
  ],
)
''',
  ),
  WidgetItem(
    name: 'Switch',
    description: 'スイッチを表示します。',
    category: '入力',
    icon: Icons.switch_left,
    codeSnippet: '''
Switch(
  value: true,
  activeColor: Colors.red,
  onChanged: (bool value) {},
)
''',
  ),
  WidgetItem(
    name: 'Tooltip',
    description: 'ツールチップを表示します。',
    category: '表示',
    icon: Icons.tour,
    codeSnippet: '''
Tooltip(
  message: 'これはツールチップです',
  child: const Text('私にカーソルを合わせてください'),
)
''',
  ),
];