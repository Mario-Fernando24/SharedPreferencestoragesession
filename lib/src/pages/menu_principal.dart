import 'package:flutter/material.dart';
import 'package:preferenciausuariosession/src/pages/setting_page.dart';

import 'home_page.dart';

class MenuPrincial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //ojo para quitar lo que sobresale del menu lateral
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    //para que agarre todo el ancho
                    fit: BoxFit.cover)),
          )),
          //OPCIONES DEL MENU
          ListTile(
            leading: Icon(
              Icons.pages,
              color: Colors.blue,
            ),
            title: Text('Home'),
            onTap: () => Navigator.pushNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(
              Icons.party_mode,
              color: Colors.blue,
            ),
            title: Text('Party Mode'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.blue,
            ),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: Text('Ajustes'),
              onTap: () {
                //ojo mario para cerrar el menu
                //  Navigator.pop(context);
                //  Navigator.pushNamed(context, SettingPage.routeName);
                //otra manera

                Navigator.pushReplacementNamed(context, SettingPage.routeName);
              }),
        ],
      ),
    );
  }
}
