// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


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
