import 'package:flutter/material.dart';
import 'package:handson3/homepage.dart';

class VoltarButton extends StatelessWidget {
  const VoltarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)
        ),
        onPressed: ()  {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomePage(),),);
              },
              child: const Text('Voltar', style: TextStyle(fontSize: 25),)),
    );
  }
}