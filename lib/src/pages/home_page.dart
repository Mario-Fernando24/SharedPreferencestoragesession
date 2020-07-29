import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/menu_principal.dart';
import 'package:preferenciausuariosession/src/share_prefr/preferencias_usuario.dart';

class HomePage extends StatelessWidget {
  //nombre de la pagina de forma estatica
  static final String routeName = 'home';
  //instancio
  final prefs = new PreferenciasUsuarios();
  @override
  Widget build(BuildContext context) {
    //Inicializo la ultima page
    //  prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuarios'),
        //para activar el color
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
      ),
      drawer: MenuPrincial(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color segundario ${prefs.colorSecundario}'),
          Divider(),
          if (prefs.genero == 1) Text('Genero: Masculino '),
          if (prefs.genero == 2) Text('Genero: Femenino '),
          Divider(),
          Text('Nombre de usuario: ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}
