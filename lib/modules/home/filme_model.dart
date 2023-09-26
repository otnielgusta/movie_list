class FilmeModel{
  String? id;
  String? titulo;
  String? imagem_post;
  String? imagem_fundo;
  String? descricao;
  String? vote_average;

  FilmeModel({
    this.id,
    this.titulo,
    this.imagem_post,
    this.imagem_fundo,
    this.descricao,
    this.vote_average,
  });

  FilmeModel.fromJson(Map<String, dynamic> json){
    id = json['id'].toString();
    titulo = json['title'];
    imagem_post = json['poster_path'];
    imagem_fundo = json['backdrop_path'];
    descricao = json['overview'];
    vote_average = json['vote_average'].toString();
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.titulo;
    data['poster_path'] = this.imagem_post;
    data['backdrop_path'] = this.imagem_fundo;
    data['overview'] = this.descricao;
    data['vote_average'] = this.vote_average;
    return data;
  }
}