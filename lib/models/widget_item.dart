import 'package:flutter/material.dart';

// Widgetを分類するためのカテゴリ
enum WidgetCategory {
  basics,
  layout,
  text,
  assets,
  input,
  animation,
  interaction,
  styling,
  scrolling,
}

// 各Widgetの情報を保持するクラス
class WidgetItem {
  final String name;
  final WidgetCategory category;
  final String description;
  final String documentationUrl;
  final IconData icon;

  const WidgetItem({
    required this.name,
    required this.category,
    required this.description,
    required this.documentationUrl,
    required this.icon,
  });
}
