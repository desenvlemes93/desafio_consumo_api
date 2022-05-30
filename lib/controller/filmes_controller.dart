import 'package:desafio_consumo_api/model/filmes.dart';

import '../repositories/filmes_repository.dart';

class FilmesController {
  final _filmesRepository = FilmesRepository();
  Future<void> findAll() async {
    final filmes = await _filmesRepository.findAll();
    filmes.forEach(print);
  }

  Future<void> findById(String id) async {
    final filmesBy = await _filmesRepository.findById(id);
    print(filmesBy);
  }

  Future<void> update() async {
    final filmesBy = await _filmesRepository.findById('406759');
    filmesBy.genre_ids.add(4859);
    _filmesRepository.update(filmesBy);
  }

  Future<void> insert() {
    final filme = Filmes(
      adult: true,
      backdrop_path: '33333333333333333333333333333',
      genre_ids: [66, 97, 25],
      //id: '33',
      original_language: 'pt',
      original_title: 'Teste de Inserção',
      overview: 'Vamos ri',
      popularity: 900.95,
      poster_path: 'ffffff',
      release_date: '2022-05-30',
      title: 'primeiro Insert',
      video: true,
      vote_average: 55.9,
      vote_count: 988,
    );

    return _filmesRepository.insert(filme);
  }
}
