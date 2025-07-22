import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/movie_data.dart';
import '../models/movie.dart';
import '../widgets/movie_item.dart';
import '../widgets/genre_header_delegate.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Movies by Genre', style: TextStyle(color: Colors.white)),
              background: Image.asset(
                'images/banner.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          ..._buildGenreSections(context),
        ],
      ),
    );
  }
  List<Widget> _buildGenreSections(BuildContext context) {
    final List<Widget> slivers = [];
    for (final entry in moviesByGenre.entries) {
      slivers.add(
        SliverPersistentHeader(
          pinned: true,
          delegate: GenreHeaderDelegate(title: entry.key),
        ),
      );
      slivers.add(
        SliverToBoxAdapter(
          child: SizedBox(
            height: 220,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final movie = entry.value[index];
                return MovieItem(movie: movie);
              },
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemCount: entry.value.length,
            ),
          ),
        ),
      );
    }
    return slivers;
  }
}
