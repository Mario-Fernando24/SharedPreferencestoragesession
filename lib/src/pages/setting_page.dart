import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/menu_principal.dart';
import 'package:preferenciausuariosession/src/share_prefr/preferencias_usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  //nombre de la pagina de forma estatica
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _colorSegundario;
  int _genero;
  String _nombre;

  TextEditingController _textcontroller;

  //inicializar el shared_preferences
  final prefs = new PreferenciasUsuarios();

  @override
  //se dispara cuando se inicializa este estado
  void initState() {
    super.initState();
    //Inicializo la ultima page
    // prefs.ultimaPagina = SettingPage.routeName;
    //inicializo el genero con las pref que esta en mi clase share_prefr/preferencias_usuario
    _genero = prefs.genero;
    _colorSegundario = prefs.colorSecundario;
    _textcontroller = new TextEditingController(text: _nombre);
  }

  _setsectedRadio(int valor) {
    //creo una variable y guardo en las preferencia algun valor   "llave key y el valor " quee es el genero
    //regresa un Future<bool> setInt(String key, int value)
    // prefs.setInt('genero', valor);
    prefs.genero = valor;
    _genero = valor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AjusteJJs'),

          //para activar el color
          backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        ),
        drawer: MenuPrincial(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Ajustes',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SwitchListTile(
              value: _colorSegundario,
              title: Text('Color segundario'),
              onChanged: (value) {
                //para que se redibuje
                setState(() {
                  prefs.colorSecundario = value;
                  _colorSegundario = value;
                });
              },
            ),
            RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: _genero,
              //cuando presionamos me pasa al sharead
              onChanged: _setsectedRadio,
            ),
            RadioListTile(
              value: 2,
              title: Text('Femenino'),
              groupValue: _genero,

              //cuando presionamos me pasa al sharead
              onChanged: _setsectedRadio,
            ),

            //caja de texto para ingresar un string
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textcontroller,
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona utilizando el telefono'),
                onChanged: (value) {
                  prefs.nombreUsuario = value;
                },
              ),
            )
          ],
        ));
  }
}
