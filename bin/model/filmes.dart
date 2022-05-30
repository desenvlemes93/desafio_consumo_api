import 'dart:convert';
import 'dart:ffi';

class Filmes {
  bool adult;
  String backdrop_path;
  List<int> genre_ids;
  String id;
  String original_language;
  String original_title;
  String overview;
  String popularity;
  String poster_path;
  String release_date;
  String title;
  bool video;
  String vote_average;
  String vote_count;
  Filmes({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  Map<String, dynamic> toMap() {
    return {
      'adult': adult,
      'backdrop_path': backdrop_path,
      'genre_ids': [genre_ids],
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'video': video,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }

  factory Filmes.fromMap(Map<String, dynamic> map) {
    return Filmes(
      adult: map['adult'] ?? false,
      backdrop_path: map['backdrop_path'] ?? '',
      genre_ids: List<int>.from(map['genre_ids'] ?? 0),
      id: map['id'] ?? '',
      original_language: map['original_language'] ?? '',
      original_title: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      popularity: map['popularity']  ,
      poster_path: map['poster_path'] ?? '',
      release_date: map['release_date'] ?? '',
      title: map['title'] ?? '',
      video: map['video'] ?? false,
      vote_average: map['vote_average'] ?? '',
      vote_count: map['vote_count'] ?? '',
    );
  }
  String toJson() => jsonEncode(toMap());
  factory Filmes.fromJson(String json) => Filmes.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Filmes(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }
}
