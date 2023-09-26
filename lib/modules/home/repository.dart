import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:list_filme/consts/base_url.dart';
import 'package:list_filme/modules/home/categoria_filmes_model.dart';

class FilmesRepository {
  final Uri _url = Uri.parse(BaseUrl.base_url + "/filmes");
  final http.Client _client = http.Client();

   Future<CategoriaFilmesModel> getFilmes() async {
    try {

      final response = await _client.get(
        _url,
        headers: {'Accept-Charset': 'utf-8'},
        );
      if (response.statusCode == 200) {
        final String decodedString = utf8.decode(response.bodyBytes);
        return CategoriaFilmesModel.fromJson(jsonDecode(decodedString));
      } else {
        throw Exception('Falha ao carregar filmes.');
      }
    } on Exception catch (e) {
      throw e;  // Você pode querer tratar ou logar o erro aqui antes de lançá-lo novamente
    } finally {
      _client.close();
    }
  }
}