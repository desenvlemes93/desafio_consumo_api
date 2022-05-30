import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/filmes.dart';

class FilmesRepository {
  Future<List<Filmes>> findAll() async {
    final filmeResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes'));

    final filmeList = await jsonDecode(filmeResponse.body);

    return filmeList.map<Filmes>((filmeMap) {
      return Filmes.fromMap(filmeMap);
    }).toList();
  }

  Future<Filmes> findById(String id) async {
    final filmeResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes/$id'));

    return Filmes.fromJson(filmeResponse.body);
  }

  Future<void> update(Filmes filme) async {
    final filmeResponse = await http.put(
        Uri.parse('http://localhost:3031/filmes/${filme.id}'),
        body: filme.toJson(),
        headers: {
          'content-type': 'application/json',
        });
  }

  Future<void> insert(Filmes filme) async {
    final filmeResponse = await http.post(
        Uri.parse('http://localhost:3031/filmes/'),
        body: filme.toJson(),
        headers: {
          'content-type': 'application/json',
        });
  }
}
