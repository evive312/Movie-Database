class Movie {
  final String title;
  final String director;
  final int year;
  final String img;
  final String imdbUrl;
  final String wikiUrl;
  final String stars;
  final String duration;
  final double ratingImdb;
  final double ratingRt; 

  const Movie({
    required this.title,
    required this.director,
    required this.year,
    required this.img,
    required this.imdbUrl,
    required this.wikiUrl,
    required this.stars,
    required this.duration,
    required this.ratingImdb,
    required this.ratingRt,
  });
}
