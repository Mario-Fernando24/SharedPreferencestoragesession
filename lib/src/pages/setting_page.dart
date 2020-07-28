import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/menu_principal.dart';

class SettingPage extends StatefulWidget {
  //nombre de la pagina de forma estatica
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _colorSegundario = false;
  int _genero = 1;
  String _nombre = 'mario';

  TextEditingController _textcontroller;

  @override
  //se dispara cuando se inicializa este estado
  void initState() {
    super.initState();
    _textcontroller = new TextEditingController(text: _nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AjusteJJs'),
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
                  _colorSegundario = value;
                });
              },
            ),
            RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: _genero,
              onChanged: (value) {
                setState(() {
                  _genero = value;
                });
              },
            ),
            RadioListTile(
                value: 2,
                title: Text('Femenino'),
                groupValue: _genero,
                onChanged: (value) {
                  setState(() {
                    _genero = value;
                  });
                }),

            //caja de texto para ingresar un string
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textcontroller,
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona utilizando el telefono'),
                onChanged: (value) {},
              ),
            )
          ],
        ));
  }
}
