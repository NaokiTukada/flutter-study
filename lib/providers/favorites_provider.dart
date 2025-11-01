
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/widget_item.dart';
import '../data/widget_data.dart';

class FavoritesProvider with ChangeNotifier {
  final List<String> _favoriteWidgetNames = [];
  static const String _favoritesKey = 'favoriteWidgets';

  List<WidgetItem> get favoriteWidgets => widgetData
      .where((widget) => _favoriteWidgetNames.contains(widget.name))
      .toList();

  FavoritesProvider() {
    _loadFavorites();
  }

  bool isFavorite(String widgetName) {
    return _favoriteWidgetNames.contains(widgetName);
  }

  void toggleFavorite(String widgetName) {
    if (isFavorite(widgetName)) {
      _favoriteWidgetNames.remove(widgetName);
    } else {
      _favoriteWidgetNames.add(widgetName);
    }
    _saveFavorites();
    notifyListeners();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_favoritesKey);
    if (favorites != null) {
      _favoriteWidgetNames.clear();
      _favoriteWidgetNames.addAll(favorites);
    }
    notifyListeners();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_favoritesKey, _favoriteWidgetNames);
  }
}
