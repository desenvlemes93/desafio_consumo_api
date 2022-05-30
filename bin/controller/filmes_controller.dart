
import '../repositories/filmes_repository.dart';

class FilmesController {
  final _filmesRepository = FilmesRepository();
  Future<void> findAll() async {    
    
    final filmes = await  _filmesRepository.findAll();
      filmes.forEach(print);
    
  }
  
}