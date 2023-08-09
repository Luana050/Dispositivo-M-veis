// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(PaginaInical());
}

class PaginaInical extends StatelessWidget {
  PaginaInical({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/cadastro': (context) => Cadastro(),
      },
    );
  }
}

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  // uma variável declarada que vai controlar o estado
  bool curtiu = false;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Color.fromARGB(255, 72, 185, 238),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
          ],
        ),
      ),
    );
  }
}

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  // uma variável declarada que vai controlar o estado
  bool curtiu = false;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curtir"),
        backgroundColor: Color.fromARGB(255, 219, 34, 95),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("curtiu: $x vezes"),
            IconButton(
              iconSize: 150,
              icon: curtiu == true
                  ? Icon(Icons.favorite, color: Colors.pink)
                  : Icon(
                      Icons.favorite_outlined,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  curtiu = true;
                  x = x + 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/contador');
            },
            leading: Icon(Icons.calculate,
                size: 36, color: Color.fromARGB(255, 110, 194, 50)),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/curtir');
            },
            leading: Icon(Icons.favorite,
                size: 36, color: Color.fromARGB(255, 233, 53, 40)),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de Curtir e Descurtir"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/cadastro');
            },
            leading: Icon(Icons.app_registration,
                size: 36, color: Color.fromARGB(255, 223, 113, 41)),
            title: Text("Cadastro"),
            subtitle: Text("Exemplo de Cadastro"),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int x = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 142, 46, 159),
        title: Text("Meu Aplicativo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 142, 46, 159)),
              onPressed: () {
                setState(() {
                  x = x + 1;
                });
              },
              child: Text("Incrementa"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 142, 46, 159)),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
              },
              child: Text("Decrementa"),
            )
          ],
          
        ),
      ),

      

    );
  }
}
