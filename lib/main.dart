import 'package:flutter/material.dart';

void main() {
  runApp(PaginaInical());
}

class PaginaInical extends StatelessWidget {
PaginaInical({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
Home({super.key});

  @override
  Widget build(BuildContext context) {
    String x = "100";

    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Aplicativo"),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(x),
          ElevatedButton(
            onPressed: () {
              // AO PRESSIONAR O BOTAO
              print("Antes de Zerar");
              print(x);
              x = "0";
              print("Depois de Zerar");
              print(x);
            },
            child: Text("Zerar"),
          
            )
          ],
        ),
      ),
    );
  }
}