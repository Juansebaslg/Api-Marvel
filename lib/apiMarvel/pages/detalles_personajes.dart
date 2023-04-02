import 'package:flutter/material.dart';
import 'package:marvel/apiMarvel/controlers/personajes.dart';
import 'package:marvel/apiMarvel/widgets/menu.dart';

class detallesPersonajes extends StatelessWidget {
  final Character character;
  // Validación para cuando description sea nulo o esté vacío
  final defaultDescription = 'Este personaje no tiene una descripción para mostrar';

  const detallesPersonajes({Key? key, required this.character})
      : super(key: key);

  Widget buildButton({
    required String text,
    required int value,
  }) =>
      MaterialButton(
        onPressed: () {},
        padding: const EdgeInsets.symmetric(vertical: 6),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$value',
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
            )
          ],
        ),
      );
      
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      backgroundColor: const Color.fromARGB(255, 6, 2, 255),
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Image.network(
              character.image,
              height: 300,
              fit: BoxFit.fill,
            ),
            
            Container(
              height: 21,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 54, 67, 244),
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 67, 54),
                border: Border.all(width: 0, color: const Color.fromARGB(0, 0, 0, 0)),
              ),
              child: Text(
                character.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 17,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 67, 54),
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    
                    'Tres primeras series: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  for (final seriesName in character.firstThreeSeriesNames)
                    Text(
                      seriesName,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                    ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 0, 0),
                border: Border.all(width: 10, color: Colors.transparent),
              ),
              child: Column(
                children: [
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildButton(text: "Comics", value: character.comicsCount),
                      buildButton(text: "Series", value: character.seriesCount),
                      buildButton(
                          text: "Historias", value: character.storiesCount),
                      buildButton(
                          text: "Eventos", value: character.eventsCount),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
