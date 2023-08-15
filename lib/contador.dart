// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
