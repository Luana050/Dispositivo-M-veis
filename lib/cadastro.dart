// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var nomeController = TextEditingController();
  var emailController = TextEditingController();
  var senhaController = TextEditingController();


  // uma variável declarada que vai controlar o estado
  bool curtiu = false;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Color.fromARGB(255, 127, 121, 233),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: nomeController,
              cursorColor: Color.fromARGB(255, 106, 17, 128),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 31, 17, 219)),
              hintText: "Informe seu Nome",
              label: Text("Informe seu Nome"),
              border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              cursorColor: Color.fromARGB(255, 106, 17, 128),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 31, 17, 219)),
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
                prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 31, 17, 219) ),
              hintText: "Informe sua senha",
              border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

              TextFormField(
              cursorColor: Color.fromARGB(255, 106, 17, 128),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_month, color: Color.fromARGB(255, 31, 17, 219)),
              hintText: "Informe sua data de Nascimento",
              label: Text("Informe sua data de Nascimento"),
              border: OutlineInputBorder(),
              ),
              onTap: () {
                showDatePicker(
                  context: context,
                 initialDate: DateTime.now(),
                  firstDate: DateTime(1900,1,1),
                   lastDate: DateTime.now(),
                   );
              },
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {
                print("O botão salvar foi clicado");
                print(nomeController.text);
                print(emailController.text);
                print(senhaController.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 50, 17, 97)
              ),
            child: Text("Salvar"),
            
      ),
          ],
        
      ),
    );
  }
}
