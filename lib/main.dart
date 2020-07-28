import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/home_page.dart';
import 'package:preferenciausuariosession/src/pages/setting_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext contetex) => HomePage(),
        SettingPage.routeName: (BuildContext contetex) => SettingPage()
      },
    );
  }
}
