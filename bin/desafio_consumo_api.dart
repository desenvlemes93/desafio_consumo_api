import 'package:desafio_consumo_api/desafio_consumo_api.dart'
    as desafio_consumo_api;

import 'controller/filmes_controller.dart';

Future<void> main()   async {
  await FilmesController().findAll();  
}
