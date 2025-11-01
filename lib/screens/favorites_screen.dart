import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_study/providers/favorites_provider.dart';
import 'package:flutter_study/widgets/widget_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'お気に入り',
                style: GoogleFonts.mPlusRounded1c(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.orangeAccent],
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Consumer<FavoritesProvider>(
              builder: (context, favoritesProvider, child) {
                final favoriteWidgets = favoritesProvider.favoriteWidgets;

                if (favoriteWidgets.isEmpty) {
                  return const Center(
                    child: Text(
                      'お気に入りはまだありません。',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  );
                }

                return StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  children: favoriteWidgets.map((item) => StaggeredGridTile.fit(crossAxisCellCount: 1, child: WidgetCard(key: ValueKey(item.name), item: item))).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}