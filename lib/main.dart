// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'cadastro.dart';
import 'contador.dart';
import 'curtir.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: 
      GlobalMaterialLocalizations.delegates,
      debugShowCheckedModeBanner: false,
      routes: {
        
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/cadastro': (context) => Cadastro(),
        '/login':(context) => login(),
      },
    );
  }
}





