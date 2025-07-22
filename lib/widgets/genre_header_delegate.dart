import 'package:flutter/material.dart';

class GenreHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  GenreHeaderDelegate({required this.title});

  @override
  double get minExtent => 48;

  @override
  double get maxExtent => 64;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          if (overlapsContent)
            const BoxShadow(blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant GenreHeaderDelegate oldDelegate) =>
      oldDelegate.title != title;
}
