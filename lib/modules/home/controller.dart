import 'package:flutter/material.dart';
import 'package:list_filme/consts/estado.dart';
import 'package:list_filme/modules/home/categoria_filmes_model.dart';
import 'package:list_filme/modules/home/repository.dart';

class FilmesController{
  final _notificadorDeEstado  = ValueNotifier<Estados>(Estados.vazio);
  final _repositorio = FilmesRepository();
  Exception? ultimoErro;
  ValueNotifier<Estados> get estado => _notificadorDeEstado;
  late CategoriaFilmesModel filmes;

  Future<void> getFilmes() async {
    _notificadorDeEstado.value = Estados.carregando;
    try {
      filmes = await _repositorio.getFilmes();
      _notificadorDeEstado.value = Estados.sucesso;
    } catch (e) {
    if (e is Exception) {
        ultimoErro = e;
    } else {
        ultimoErro = Exception(e.toString());
    }
    print("Erro ao buscar filmes: $e"); // ou use um logger
    _notificadorDeEstado.value = Estados.erro;
}
}
}