import 'package:flutter/material.dart';
import 'package:list_filme/consts/colors.dart';
import 'package:list_filme/modules/home/home_page.dart';
import 'package:list_filme/modules/home/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Cores.fundo_roxo),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
