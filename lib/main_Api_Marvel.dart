import 'package:flutter/material.dart';
import 'package:marvel/apiMarvel/pages/personajes_listados.dart';

class mainApiMarvel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _mainApiMarvel();
  }
}

class _mainApiMarvel extends State<mainApiMarvel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Personajes Api de Marvel"),
        ),
        body: listaPersonajes());
        
  }
}