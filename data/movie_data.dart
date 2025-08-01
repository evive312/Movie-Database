import '../models/movie.dart';

final Map<String, List<Movie>> moviesByGenre = {
  'Horror': [
    Movie(
      title: 'Get Out',
      director: 'Jordan Peele',
      year: 2017,
      img: 'images/get_out.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt5052448/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Get_Out',
      stars: 'Daniel Kaluuya, Allison Williams',
      duration: '1h 44m',
      ratingImdb: 7.7,
      ratingRt: 98,
    ),
    Movie(
      title: 'The Babadook',
      director: 'Jennifer Kent',
      year: 2014,
      img: 'images/babadook.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt2321549/',
      wikiUrl: 'https://en.wikipedia.org/wiki/The_Babadook',
      stars: 'Essie Davis, Noah Wiseman',
      duration: '1h 34m',
      ratingImdb: 6.8,
      ratingRt: 98,
    ),
    Movie(
      title: 'Creepyshow',
      director: 'George A. Romero',
      year: 1982,
      img: 'images/creepshow.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0083767/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Creepshow',
      stars: 'Hal Holbrook, Adrienne Barbeau',
      duration: '2h 0m',
      ratingImdb: 6.8,
      ratingRt: 65,
    ),
  ],
  'Drama': [
    Movie(
      title: 'Parasite',
      director: 'Bong Joon Ho',
      year: 2019,
      img: 'images/parasite.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt6751668/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Parasite_(2019_film)',
      stars: 'Song Kang-ho, Lee Sun-kyun',
      duration: '2h 12m',
      ratingImdb: 8.5,
      ratingRt: 99,
    ),
    Movie(
      title: 'The Social Network',
      director: 'David Fincher',
      year: 2010,
      img: 'images/social_network.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt1285016/',
      wikiUrl: 'https://en.wikipedia.org/wiki/The_Social_Network',
      stars: 'Jesse Eisenberg, Andrew Garfield',
      duration: '2h 0m',
      ratingImdb: 7.8,
      ratingRt: 96,
    ),
    Movie(
      title: 'My Old Ass',
      director: 'Megan Park',
      year: 2024,
      img: 'images/oldass.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt18559464/',
      wikiUrl: 'https://en.wikipedia.org/wiki/My_Old_Ass',
      stars: 'Maisy Stella, Aubrey Plaza',
      duration: '2h 12m',
      ratingImdb: 6.9,
      ratingRt: 90,
    ),
  ],
  'Comedy': [
    Movie(
      title: 'The Grand Budapest Hotel',
      director: 'Wes Anderson',
      year: 2014,
      img: 'images/grand_budapest.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt2278388/',
      wikiUrl: 'https://en.wikipedia.org/wiki/The_Grand_Budapest_Hotel',
      stars: 'Ralph Fiennes, Tony Revolori',
      duration: '1h 39m',
      ratingImdb: 8.1,
      ratingRt: 92,
    ),
    Movie(
      title: 'Superbad',
      director: 'Greg Mottola',
      year: 2007,
      img: 'images/superbad.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0829482/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Superbad',
      stars: 'Jonah Hill, Michael Cera',
      duration: '1h 53m',
      ratingImdb: 7.6,
      ratingRt: 88,
    ),
    Movie(
      title: 'Dont Be a Menace to South Central While Drinking Your Juice in the Hood',
      director: 'Paris Barclay',
      year: 1996,
      img: 'images/dont.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0116126/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Don%27t_Be_a_Menace_to_South_Central_While_Drinking_Your_Juice_in_the_Hood',
      stars: 'Marlon Wayans, Shawn Wayans',
      duration: '1h 29m',
      ratingImdb: 6.5,
      ratingRt: 32,
    ),
  ],
  'Sci‑Fi': [
    Movie(
      title: 'Blade Runner 2049',
      director: 'Denis Villeneuve',
      year: 2017,
      img: 'images/blade_runner_2049.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt1856101/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Blade_Runner_2049',
      stars: 'Ryan Gosling, Harrison Ford',
      duration: '2h 44m',
      ratingImdb: 8.0,
      ratingRt: 88,
    ),
    Movie(
      title: 'The Thing',
      director: 'John Carpenter',
      year: 1982,
      img: 'images/the_thing.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0084787/',
      wikiUrl: 'https://en.wikipedia.org/wiki/The_Thing_(1982_film)',
      stars: 'Kurt Russel, Keith David',
      duration: '1h 49m',
      ratingImdb: 8.2,
      ratingRt: 85,
    ),
    Movie(
      title: 'Minority Report',
      director: 'Steven Spielberg',
      year: 2002,
      img: 'images/tcmr.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0181689/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Minority_Report_(film)',
      stars: 'Tom Cruise, Colin Farrell',
      duration: '2h 25m',
      ratingImdb: 7.6,
      ratingRt: 89,
    ),
  ],
  'Animation': [
    Movie(
      title: 'Spider‑Man: Into the Spider‑Verse',
      director: 'Bob Persichetti',
      year: 2018,
      img: 'images/spiderverse.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt4633694/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Spider-Man:_Into_the_Spider-Verse',
      stars: 'Shameik Moore, Jake Johnson',
      duration: '1h 57m',
      ratingImdb: 8.4,
      ratingRt: 97,
    ),
    Movie(
      title: 'Akira',
      director: 'Katsuhiro Otomo',
      year: 1988,
      img: 'images/akira.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0094625/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Akira_(1988_film)',
      stars: 'Mitsuo Iwata, Nozomu Sasaki',
      duration: '2h 4m',
      ratingImdb: 8,
      ratingRt: 91,
    ),
    Movie(
      title: 'Bee Movie',
      director: ' Steve Hickner, Simon J. Smith',
      year: 2007,
      img: 'images/bee.jpg',
      imdbUrl: 'https://www.imdb.com/title/tt0389790/',
      wikiUrl: 'https://en.wikipedia.org/wiki/Bee_Movie',
      stars: 'Jerry Seinfeld, Renee Zellweger',
      duration: '1h 31m',
      ratingImdb: 6.1,
      ratingRt: 49,
    ),
  ],
};