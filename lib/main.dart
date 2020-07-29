import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/home_page.dart';
import 'package:preferenciausuariosession/src/pages/setting_page.dart';
import 'package:preferenciausuariosession/src/share_prefr/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuarios();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //instancio
  final prefs = new PreferenciasUsuarios();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',

      //que me lleve a la ultima pagina
      //initialRoute: prefs.ultimaPagina,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext contetex) => HomePage(),
        SettingPage.routeName: (BuildContext contetex) => SettingPage()
      },
    );
  }
}
