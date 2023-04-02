import 'package:flutter/material.dart';
import 'package:marvel/apiMarvel/pages/personajes_listados.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget> [
            _buildDrawerHeader(),
            _buildDrawerItem(
              icon: Icons.home,
              text: 'Inicio',
              onTap: () => {Navigator.pushReplacementNamed(context, 'home')}
            ),
            _buildDrawerItem(
              icon: Icons.person, 
              text: 'Personajes', 
              onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => listaPersonajes()))}
              ),
              Divider(),
              ListTile(
                title: Text('Aplicación Marvel v 1.0'),
              )
          ],
        ),
      );
  }

    Widget _buildDrawerHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill, image: AssetImage('assets/avengers.jpg')
        )
      ),
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 20.0,
          left: 20.0,
          child: Text('Aplicación de Marvel - JSL',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w500
          ),)
        )
      ]),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap
  }) 
  {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}