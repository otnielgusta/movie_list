import 'package:list_filme/modules/home/filme_model.dart';

class CategoriaFilmesModel {
  List<FilmeModel>? melhores_avaliados;
  List<FilmeModel>? popular;
  List<FilmeModel>? continue_assistindo;
  List<FilmeModel>? chegando_agora;

  CategoriaFilmesModel({
    this.melhores_avaliados,
    this.popular,
    this.continue_assistindo,
    this.chegando_agora,
  });

  CategoriaFilmesModel.fromJson(Map<String, dynamic> json) {
    if (json['melhores_avaliados'] != null) {
      melhores_avaliados = <FilmeModel>[];
      json['melhores_avaliados'].forEach((v) {
        melhores_avaliados!.add(new FilmeModel.fromJson(v));
      });
    }
    if (json['popular'] != null) {
      popular = <FilmeModel>[];
      json['popular'].forEach((v) {
        popular!.add(new FilmeModel.fromJson(v));
      });
    }
    if (json['continue_assistindo'] != null) {
      continue_assistindo = <FilmeModel>[];
      json['continue_assistindo'].forEach((v) {
        continue_assistindo!.add(new FilmeModel.fromJson(v));
      });
    }
    if (json['chegando_agora'] != null) {
      chegando_agora = <FilmeModel>[];
      json['chegando_agora'].forEach((v) {
        chegando_agora!.add(new FilmeModel.fromJson(v));
      });
    }
  }
}