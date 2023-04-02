import 'package:flutter/material.dart';
import 'package:marvel/apiMarvel/pages/home.dart';
import 'package:marvel/apiMarvel/pages/personajes_listados.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'lista_personajes': (context) => listaPersonajes(), 
      },
    );
  }
}

