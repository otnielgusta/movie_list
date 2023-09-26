import 'package:flutter/material.dart';
import 'package:list_filme/consts/colors.dart';
import 'package:list_filme/consts/text_styles.dart';

class ItemChegandoWidget extends StatelessWidget {
  final String url;
   final String nome;
  final String votos;
  const ItemChegandoWidget({
    super.key,
    required this.url,
    required this.nome, 
    required this.votos
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
           Container(
             decoration: BoxDecoration(
            color: Cores.branco,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Cores.roxo_borda,
              width: 3,
              ),
            ),
             child: AspectRatio(
               aspectRatio: 16/9,
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
           ),
        ],
      ) 
      ,
    );
  }
}
