// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  // uma variável declarada que vai controlar o estado
  bool curtiu = false;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color.fromARGB(255, 127, 121, 233),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: emailController,
            cursorColor: Color.fromARGB(255, 106, 17, 128),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.email, color: Color.fromARGB(255, 31, 17, 219)),
              hintText: "Informe seu email",
              label: Text("Informe seu email"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: senhaController,
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.lock, color: Color.fromARGB(255, 31, 17, 219)),
              hintText: "Informe sua senha",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print("O botão salvar foi clicado");
              print(emailController.text);
              print(senhaController.text);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 50, 17, 97)),
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
