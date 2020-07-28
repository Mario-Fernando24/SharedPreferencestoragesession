import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/menu_principal.dart';
import 'package:preferenciausuariosession/src/pages/setting_page.dart';

class HomePage extends StatelessWidget {
  //nombre de la pagina de forma estatica
  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuarios'),
      ),
      drawer: MenuPrincial(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color segundario'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nombre de usuario'),
          Divider(),
        ],
      ),
    );
  }
}
