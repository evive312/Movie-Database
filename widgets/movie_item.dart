import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/movie.dart';
import '../screens/movie_full_image_screen.dart';
import '../screens/movie_info_screen.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => MovieFullImageScreen(movie: movie)),
        );
      },
      onLongPress: () => _showContextMenu(context),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.surfaceVariant,
          boxShadow: const [BoxShadow(blurRadius: 4, offset: Offset(0, 2))],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image.asset(
                movie.img,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${movie.director} • ${movie.year}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }

  void _showContextMenu(BuildContext context) async {
    final selected = await showMenu<int>(
      context: context,
      position: const RelativeRect.fromLTRB(200, 400, 0, 0),
      items: const [
        PopupMenuItem(value: 0, child: Text('Show Details')),
        PopupMenuItem(value: 1, child: Text('Open Wikipedia')),
        PopupMenuItem(value: 2, child: Text('Open IMDb')),
      ],
    );
    switch (selected) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => MovieInfoScreen(movie: movie)),
        );
        break;
      case 1:
        _launchUrl(movie.wikiUrl);
        break;
      case 2:
        _launchUrl(movie.imdbUrl);
        break;
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}