import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class listaPersonajes extends StatefulWidget {
  @override
  estadoListaPersonajes createState() => estadoListaPersonajes();
}

class estadoListaPersonajes extends State<listaPersonajes> {
  List<dynamic> characters = [];

  Future<void> getCharacters() async {
    const ts = '05';
    const apiKey = 'eccf15c79b40dbba8626342bf83f9f80';
    const hash = 'e1df0435537be2ee7f521a9aab015459';

    const url = 'https://gateway.marvel.com:443/v1/public/characters?ts=$ts&apikey=$apiKey&hash=$hash';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      setState(() {
        characters = jsonData['data']['results'];
      });
    } else {
      throw Exception('Falla en la carga de los personajes');
    }
  }

  @override
  void initState() {
    super.initState();
    getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}