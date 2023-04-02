import 'package:flutter/material.dart';
import 'package:marvel/apiMarvel/widgets/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
          title: const Text("Personajes Api de Marvel"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Center(
              child: Image(image: AssetImage('assets/Marvel_Logo.png'),
              ),
            )
          ]
          ),
    );
  }

}