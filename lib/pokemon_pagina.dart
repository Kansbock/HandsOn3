import 'package:flutter/material.dart';
import 'package:handson3/botaovoltar.dart';

class PokemonPage extends StatelessWidget {
  final String nome;
  final String tipo;
  final String link;
  const PokemonPage({super.key, required this.nome, required this.tipo, required this.link});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navegação + Pacotes + API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text('Nome: $nome', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text('Tipo: $tipo', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Text('URL: $link', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              const VoltarButton()
            ],
          ),
        ),
      ),
    );
  }
}
