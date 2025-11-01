
import 'package:flutter/material.dart';

class WidgetItem {
  final String name;
  final String description;
  final String category;
  final IconData icon;
  final String codeSnippet;

  WidgetItem({
    required this.name,
    required this.description,
    required this.category,
    required this.icon,
    required this.codeSnippet,
  });
}
