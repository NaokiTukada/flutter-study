import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'package:flutter_study/providers/theme_provider.dart';
import 'package:flutter_study/data/widget_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const WidgetExplorerApp(),
    ),
  );
}

class WidgetExplorerApp extends StatelessWidget {
  const WidgetExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Widget Explorer',
          theme: ThemeData(
            brightness: Brightness.light,
            colorSchemeSeed: Colors.blue,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            colorSchemeSeed: Colors.blue,
            useMaterial3: true,
          ),
          themeMode: themeProvider.themeMode,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ja', ''), // Japanese
            Locale('en', ''), // English
          ],
          home: const AppShell(),
        );
      },
    );
  }
}

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'ウィジェット',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'お気に入り',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// --- Screens ---

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Explorer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          final item = widgetList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              leading: Icon(item.icon, color: Theme.of(context).primaryColor),
              title: Text(item.name),
              subtitle: Text(item.description, maxLines: 2, overflow: TextOverflow.ellipsis),
              onTap: () {
                // TODO: Navigate to Widget Detail Screen
              },
            ),
          );
        },
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お気に入り'),
      ),
      body: const Center(
        child: Text('お気に入りに追加したWidgetがここに表示されます。'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return ListView(
            children: [
              ListTile(
                title: const Text('ダークモード'),
                trailing: Switch(
                  value: themeProvider.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    themeProvider.setThemeMode(
                        value ? ThemeMode.dark : ThemeMode.light);
                  },
                ),
              ),
              ListTile(
                title: const Text('システム設定に従う'),
                trailing: Radio<ThemeMode>(
                  value: ThemeMode.system,
                  groupValue: themeProvider.themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeProvider.setThemeMode(value);
                    }
                  },
                ),
              ),
              ListTile(
                title: const Text('ライト'),
                trailing: Radio<ThemeMode>(
                  value: ThemeMode.light,
                  groupValue: themeProvider.themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeProvider.setThemeMode(value);
                    }
                  },
                ),
              ),
              ListTile(
                title: const Text('ダーク'),
                trailing: Radio<ThemeMode>(
                  value: ThemeMode.dark,
                  groupValue: themeProvider.themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeProvider.setThemeMode(value);
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
