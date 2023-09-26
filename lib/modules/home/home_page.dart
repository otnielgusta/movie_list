import 'package:flutter/material.dart';
import 'package:list_filme/consts/colors.dart';
import 'package:list_filme/consts/estado.dart';
import 'package:list_filme/consts/text_styles.dart';
import 'package:list_filme/modules/home/controller.dart';
import 'package:list_filme/modules/home/widgets/continue_assistindo_widget.dart';
import 'package:list_filme/modules/home/widgets/item_filme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = FilmesController();
  @override
  void initState() {
    super.initState();
    controller.getFilmes();
    controller.estado.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.fundo_roxo,
      appBar: AppBar(
        backgroundColor: Cores.fundo_roxo,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Cores.branco
          ),
          ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Popular",
                 style: TextStyles.titulo_categoria,
                ),
                const SizedBox(height: 10,),
                ValueListenableBuilder<Estados>(
                  valueListenable: controller.estado,
                  builder: (context, value, _) {
                    switch (value) {
                      case Estados.carregando:
                        return Center(child: CircularProgressIndicator());
                      case Estados.sucesso:
                        final filmesPopulares = controller.filmes.popular ?? [];
                        return Container(
                          height: 230,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: filmesPopulares.length,
                            itemBuilder: (context, index) {
                              final filme = filmesPopulares[index];
                              return ItemFilme(
                                url: filme.imagem_post!,
                                nome: filme.titulo!,
                                votos: filme.vote_average!,
                                descricao: filme.descricao!,
                                url_back: filme.imagem_fundo!,
                              );
                            },
                          ),
                        );
                      case Estados.erro:
                        return const Center(
                          child:  Text(
                            'Ocorreu um erro!',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        );
                      default:
                        return Container();
                    }
                  },
                ),
                const SizedBox(height: 30,),
                Text(
                "Em cartaz",
                  style: TextStyles.titulo_categoria,
                ),
                const SizedBox(height: 10,),
                ValueListenableBuilder<Estados>(
                  valueListenable: controller.estado,
                  builder: (context, value, _) {
                    switch (value) {
                      case Estados.carregando:
                        return Center(child: CircularProgressIndicator());
                      case Estados.sucesso:
                        final chegando_agora = controller.filmes.chegando_agora ?? [];
                        return Container(
                          height: 230,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: chegando_agora.length,
                            itemBuilder: (context, index) {
                              final filme = chegando_agora[index];
                              return ItemChegandoWidget(
                                url: filme.imagem_fundo!,
                                nome: filme.titulo!,
                                votos: filme.vote_average!,
                              );
                            },
                          ),
                        );
                      case Estados.erro:
                        return const Center(
                          child:  Text(
                            'Ocorreu um erro!',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        );
                      default:
                        return Container();
                    }
                  },
                ),
                  const SizedBox(height: 30,),
                  Text(
                "Melhores avaliados",
                 style: TextStyles.titulo_categoria,
                ),
                const SizedBox(height: 10,),
                ValueListenableBuilder<Estados>(
                  valueListenable: controller.estado,
                  builder: (context, value, _) {
                    switch (value) {
                      case Estados.carregando:
                        return Center(child: CircularProgressIndicator());
                      case Estados.sucesso:
                        final melhoresAvaliados = controller.filmes.melhores_avaliados ?? [];
                        return Container(
                          height: 230,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: melhoresAvaliados.length,
                            itemBuilder: (context, index) {
                              final filme = melhoresAvaliados[index];
                              return ItemFilme(
                                url: filme.imagem_post!,
                                nome: filme.titulo!,
                                votos: filme.vote_average!,
                                descricao: filme.descricao!,
                                url_back: filme.imagem_fundo!,
                              );
                            },
                          ),
                        );
                      case Estados.erro:
                        return const Center(
                          child:  Text(
                            'Ocorreu um erro!',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        );
                      default:
                        return Container();
                    }
                  },
                ),
                const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}

