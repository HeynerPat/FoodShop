import 'package:flutter/material.dart';
import 'package:foodshop/src/pages/bienvenido_page.dart';
import 'package:foodshop/src/pages/comidas_page.dart';
import 'package:foodshop/src/pages/home_page.dart';
import 'package:foodshop/src/pages/login_page.dart';
import 'package:foodshop/src/pages/perfil_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'Home': (BuildContext context) => HomePage(),
    'bienvenido': (BuildContext context) => BienvenidoPage(),
    'comidas': (BuildContext context) => ComidasPage(),
    'login': (BuildContext context) => LoginPage(),
    'perfil': (BuildContext context) => PerfilPage(),
  };
}
