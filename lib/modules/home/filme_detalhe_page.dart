import 'package:flutter/material.dart';
import 'package:list_filme/consts/colors.dart';
import 'package:list_filme/consts/text_styles.dart';

class FilmeDetalhePage extends StatelessWidget {
  final String url;
  final String url_back;
  final String titulo;
  final String descricao;
  final String votos;

  const FilmeDetalhePage({
    super.key,
    required this.url,
    required this.url_back,
    required this.titulo,
    required this.descricao,
    required this.votos
    });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Cores.fundo_roxo,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                 alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(child: Image.network("http://image.tmdb.org/t/p/w500/" + url)),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Cores.fundo_roxo],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.2, 0.8],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50.0,  // Ajuste conforme necessário
                    left: 20.0, // Ajuste conforme necessário
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Cores.branco_com_opacidade,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child:  Icon(
                            Icons.arrow_back_ios_rounded, 
                            color: Cores.fundo_roxo,
                            size: 18,
                            )
                        ),
                    
                      ),
                    ),),
                ],
              ),
              Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titulo, style: TextStyles.nome_filme_detalhe,),
                    SizedBox(height: 5,),
                    Text(votos, style: TextStyles.votos_detalhes,),
                    SizedBox(height: 15,),
                    Text(descricao, style: TextStyles.descricao,),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}