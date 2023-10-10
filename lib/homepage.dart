import 'package:flutter/material.dart';
import 'package:handson3/pokemonbotao.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 
          const Text('Navegação + Pacotes + API'),
        ),
        body: Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PokemonBotao()
        ],)),
      ),
    );
  }
}