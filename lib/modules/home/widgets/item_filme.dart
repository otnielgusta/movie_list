import 'package:flutter/material.dart';
import 'package:list_filme/consts/colors.dart';
import 'package:list_filme/consts/text_styles.dart';
import 'package:list_filme/modules/home/filme_detalhe_page.dart';

class ItemFilme extends StatelessWidget {
  final String url;
  final String url_back;
  final String nome;
  final String votos;
  final String descricao;
  const ItemFilme({
    super.key, 
    required this.url, 
    required this.url_back, 
    required this.nome, 
    required this.votos,
    required this.descricao
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>{
        Navigator.push(context, MaterialPageRoute(builder: (context) => FilmeDetalhePage(
          descricao: descricao,
          titulo: nome,
          url: url,
          votos: votos,
          url_back: url_back,
        )))
        },
      child: Container(
        width: 120,
        margin: EdgeInsets.only(right: 15),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2/3,
              child: Container(
                decoration: BoxDecoration(
                  color: Cores.branco,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Cores.roxo_borda,
                    width: 3,
                    ),
                ),
                child: ClipRRect(
              borderRadius: BorderRadius.circular(5), // um pouco menor para considerar a borda
              child: Image.network("http://image.tmdb.org/t/p/w500/" + url, fit: BoxFit.cover),
            ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: TextStyles.nome_filme,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    ),
                  Text(
                    votos,
                    style: TextStyles.votos
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}