import 'package:shared_preferences/shared_preferences.dart';

//podemos guardar el token, id del usuario, preferencias si queremos recibir notificaciones y color o tema de la apk
class PreferenciasUsuarios {
  static final PreferenciasUsuarios _instancia =
      new PreferenciasUsuarios._internal();

  //creo el constructor, cuando se ejecute el constructor que me retorne
  factory PreferenciasUsuarios() {
    return _instancia;
  }
  PreferenciasUsuarios._internal();
  //la que me va a permitir saber e inicializar para poderla consumir
  SharedPreferences prefs;

  initPrefs() async {
    //esto va a ser =   SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();
  }

  //manejo de tres propiedades  "ninguna de estas propiedades de usan"
  //bool _valors_Segundario;
  //int _genero;
  //String _nombre;

  //getter y los setter
  get genero {
    //el ??1 es que si no existe el genero que sea igual a 1
    return prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    prefs.setInt('genero', value);
  }

  get colorSecundario {
    //el ??1 es que si no existe el genero que sea igual a 1
    return prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    prefs.setBool('colorSecundario', value);
  }

  get nombreUsuario {
    //el ??1 es que si no existe el genero que sea igual a 1
    return prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    prefs.setString('nombreUsuario', value);
  }

  ///set y get de la ultima pagina que
  get ultimaPagina {
    //el ??1 es que si no existe el genero que sea igual a 1
    return prefs.getString('nombreUsuario') ?? 'home';
  }

  set ultimaPagina(String value) {
    prefs.setString('nombreUsuario', value);
  }
}
