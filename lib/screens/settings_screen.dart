import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView(
            children: [
              _buildSectionTitle(context, 'テーマ'),
              SwitchListTile(
                title: const Text('ダークモード'),
                value: themeProvider.themeMode == ThemeMode.dark,
                onChanged: (value) {
                  themeProvider.setThemeMode(value ? ThemeMode.dark : ThemeMode.light);
                },
              ),
              const Divider(),
              _buildSectionTitle(context, 'バージョン情報'),
              const ListTile(
                title: Text('バージョン'),
                subtitle: Text('1.0.0'),
              ),
              ListTile(
                title: const Text('ソースコード'),
                subtitle: const Text('GitHub'),
                trailing: const Icon(Icons.open_in_new),
                onTap: () {
                  // TODO: Implement opening the source code URL
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }
}