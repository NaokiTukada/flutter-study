import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_study/data/widget_data.dart';
import 'package:flutter_study/models/widget_item.dart';
import 'package:flutter_study/widgets/widget_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearching = false;
  List<WidgetItem> _filteredWidgets = widgetData;
  final TextEditingController _searchController = TextEditingController();

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _filteredWidgets = widgetData;
      }
    });
  }

  void _filterWidgets(String query) {
    final filtered = widgetData.where((widget) {
      final widgetName = widget.name.toLowerCase();
      final searchQuery = query.toLowerCase();
      return widgetName.contains(searchQuery);
    }).toList();

    setState(() {
      _filteredWidgets = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth < 600
        ? 2
        : screenWidth < 1200
            ? 4
            : 6;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: _isSearching
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: _searchController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'Search widgets...',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        ),
                        onChanged: _filterWidgets,
                      ),
                    )
                  : Text(
                      'Widget Explorer',
                      style: GoogleFonts.mPlusRounded1c(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purpleAccent],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(_isSearching ? Icons.close : Icons.search,
                    color: Colors.white),
                onPressed: _toggleSearch,
              ),
            ],
          ),
          SliverToBoxAdapter(
                          child: StaggeredGrid.count(
                            crossAxisCount: crossAxisCount,
                            mainAxisSpacing: 16.0,
                            crossAxisSpacing: 16.0,
                            children: _filteredWidgets
                                .map((item) => StaggeredGridTile.fit(
                                    crossAxisCellCount: 1,
                                    child: WidgetCard(key: ValueKey(item.name), item: item)))
                                .toList(),
                          ),            ),
          ),
        ],
      ),
    );
  }
}