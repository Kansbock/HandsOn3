import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:handson3/pokemon_pagina.dart';
import 'package:http/http.dart' as http;

class PokemonBotao extends StatelessWidget {
  final Random random = Random();
  PokemonBotao({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.all(20.0)
        ),
        onPressed: () async {
        int pokedex = random.nextInt(1010) + 1;
        var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokedex');
        var response = await http.get(url);
        String nome = jsonDecode(response.body)['name'];
        String tipo = jsonDecode(response.body)['types'][0]['type']['name'];
        String link = 'https://pokeapi.co/api/v2/pokemon/$nome';
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PokemonPage(nome: nome, tipo: tipo, link: link,),),);
              },
              child: const Text('Buscar pokemon aleatório', style: TextStyle(fontSize: 25),)),
    );
  }
}
