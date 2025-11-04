
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github-gist.dart';
import 'package:flutter_study/models/widget_item.dart';
import 'package:flutter_study/widgets/examples/card_example.dart';
import 'package:flutter_study/widgets/examples/circular_progress_indicator_example.dart';
import 'package:flutter_study/widgets/examples/column_example.dart';
import 'package:flutter_study/widgets/examples/container_example.dart';
import 'package:flutter_study/widgets/examples/elevated_button_example.dart';
import 'package:flutter_study/widgets/examples/icon_example.dart';
import 'package:flutter_study/widgets/examples/image_example.dart';
import 'package:flutter_study/widgets/examples/list_view_example.dart';
import 'package:flutter_study/widgets/examples/row_example.dart';
import 'package:flutter_study/widgets/examples/stack_example.dart';
import 'package:flutter_study/widgets/examples/text_example.dart';
import 'package:flutter_study/widgets/examples/text_field_example.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_study/providers/favorites_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.item});

  final WidgetItem item;

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final isFavorite = favoritesProvider.isFavorite(item.name);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(item.name, style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
              background: Hero(
                tag: item.name,
                child: ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black54, Colors.transparent],
                  ).createShader(bounds),
                  blendMode: BlendMode.darken,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.description,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.onSurface),
                  ),
                  const SizedBox(height: 32),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 800) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildCodeExample(context),
                            const SizedBox(height: 32),
                            _buildLiveExample(context),
                          ],
                        );
                      } else {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: _buildCodeExample(context),
                            ),
                            const SizedBox(width: 32),
                            Expanded(
                              child: _buildLiveExample(context),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          favoritesProvider.toggleFavorite(item.name);
        },
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.redAccent : Colors.white,
        ),
      ),
    );
  }

  Widget _buildCodeExample(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Code Example',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: HighlightView(
            item.codeSnippet,
            language: 'dart',
            theme: githubGistTheme,
            textStyle: GoogleFonts.robotoMono(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildLiveExample(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Live Example',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
            child: Theme(
              data: ThemeData(brightness: Brightness.light),
              child: _buildExampleWidget(item.name),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExampleWidget(String widgetName) {
    switch (widgetName) {
      case 'Container':
        return const ContainerExample();
      case 'Text':
        return const TextExample();
      case 'Column':
        return const ColumnExample();
      case 'Row':
        return const RowExample();
      case 'Stack':
        return const StackExample();
      case 'ListView':
        return const ListViewExample();
      case 'Image':
        return const ImageExample();
      case 'Icon':
        return const IconExample();
      case 'Card':
        return const CardExample();
      case 'ElevatedButton':
        return const ElevatedButtonExample();
      case 'TextField':
        return const TextFieldExample();
      case 'CircularProgressIndicator':
        return const CircularProgressIndicatorExample();
      default:
        return const SizedBox();
    }
  }
}
