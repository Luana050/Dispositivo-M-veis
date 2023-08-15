// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


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
        backgroundColor: Color.fromARGB(255, 80, 72, 238),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              cursorColor: Color.fromARGB(255, 106, 17, 128),
              decoration: InputDecoration(
                icon: Icon(Icons.email),
              hintText: "Informe seu email",
              ),
            ),

            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
              hintText: "Informe sua senha",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 146, 95, 217)
              ),
            child: Text("Salvar"),
            
      ),
          ],
        
      ),
    );
  }
}
