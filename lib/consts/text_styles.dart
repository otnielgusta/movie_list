import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_filme/consts/colors.dart';

class TextStyles{

  static TextStyle titulo_categoria = GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Cores.cinza_bem_claro,
  );

  static TextStyle nome_filme = GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Cores.cinza_bem_claro,
  );

  static TextStyle nome_filme_detalhe = GoogleFonts.nunitoSans(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Cores.cinza_bem_claro,
  );

  static TextStyle votos = GoogleFonts.nunitoSans(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Cores.cinza_claro,
  );
  static TextStyle votos_detalhes = GoogleFonts.nunitoSans(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Cores.cinza_claro,
  );

   static TextStyle descricao = GoogleFonts.nunitoSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Cores.cinza_claro,
  );
}