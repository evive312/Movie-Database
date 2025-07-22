import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/movie.dart';

class MovieFullImageScreen extends StatelessWidget {
  final Movie movie;
  const MovieFullImageScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () => _launchUrl(movie.imdbUrl),
        child: InteractiveViewer(
          child: Image.asset(movie.img, fit: BoxFit.contain),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}