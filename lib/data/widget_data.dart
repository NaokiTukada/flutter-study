import 'package:flutter/material.dart';
import 'package:flutter_study/models/widget_item.dart';

// アプリで学習対象とするWidgetのサンプルデータリスト
final List<WidgetItem> widgetList = [
  const WidgetItem(
    name: 'Container',
    category: WidgetCategory.layout,
    icon: Icons.check_box_outline_blank,
    description: '描画、配置、サイズ調整を組み合わせた便利なウィジェットです。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/Container-class.html',
  ),
  const WidgetItem(
    name: 'Column',
    category: WidgetCategory.layout,
    icon: Icons.view_column,
    description: '子ウィジェットを縦方向に並べて表示します。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/Column-class.html',
  ),
  const WidgetItem(
    name: 'Row',
    category: WidgetCategory.layout,
    icon: Icons.view_week_outlined,
    description: '子ウィジェットを横方向に並べて表示します。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/Row-class.html',
  ),
  const WidgetItem(
    name: 'Text',
    category: WidgetCategory.text,
    icon: Icons.text_fields,
    description: '単一スタイルのテキストを表示します。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/Text-class.html',
  ),
  const WidgetItem(
    name: 'Icon',
    category: WidgetCategory.assets,
    icon: Icons.insert_emoticon,
    description: 'アイコンフォントからグラフィカルなアイコンを表示します。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/Icon-class.html',
  ),
  const WidgetItem(
    name: 'Image',
    category: WidgetCategory.assets,
    icon: Icons.image,
    description: '画像を表示するためのウィジェットです。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/Image-class.html',
  ),
   const WidgetItem(
    name: 'Scaffold',
    category: WidgetCategory.layout,
    icon: Icons.web_asset,
    description: '基本的なマテリアルデザインの視覚レイアウト構造を実装します。',
    documentationUrl: 'https://api.flutter.dev/flutter/material/Scaffold-class.html',
  ),
  const WidgetItem(
    name: 'AppBar',
    category: WidgetCategory.layout,
    icon: Icons.web_asset_off,
    description: 'マテリアルデザインのアプリバーです。',
    documentationUrl: 'https://api.flutter.dev/flutter/material/AppBar-class.html',
  ),
  const WidgetItem(
    name: 'ListView',
    category: WidgetCategory.scrolling,
    icon: Icons.list,
    description: 'ウィジェットを直線的に配置するスクロール可能なリストです。',
    documentationUrl: 'https://api.flutter.dev/flutter/widgets/ListView-class.html',
  ),
];
