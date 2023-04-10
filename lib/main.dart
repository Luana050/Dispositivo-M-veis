

import 'package:flutter/material.dart';

void main() {
  runApp(Meuapp());
}

class Meuapp extends StatelessWidget {
  const Meuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: PaginaInicial(),);
  }
}

class PaginaInicial extends StatelessWidget {
const PaginaInicial({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
      title: Text("Titulo do meuapp"),
      backgroundColor: Color.fromARGB(255, 228, 28, 95),
     ),
     body: Container(
      alignment: Alignment.center,
      color: Color.fromARGB(255, 91, 210, 240),
      child: ElevatedButton(onPressed: () {}
child: const Text ("CLIQUE AQUI"),
style: TextStyle(fontSize: 25),
      
      ),
    ),
     ),
}
}
