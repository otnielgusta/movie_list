import 'package:flutter/material.dart';
import 'package:list_filme/consts/colors.dart';
import 'package:list_filme/modules/home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  void navegarParaHome(context) async {
    await Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return HomePage(title: 'Movie List',);
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    navegarParaHome(context);
    return Scaffold(
      body: Container(
        color: Cores.fundo_roxo,
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash_logo.png'),
          ],
        ),
      ),
    );
  }
}