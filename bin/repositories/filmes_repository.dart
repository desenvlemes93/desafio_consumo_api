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
}
