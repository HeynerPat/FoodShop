import 'package:flutter/material.dart';

class BienvenidoPage extends StatelessWidget {
  //const BienvenidoPage({Key? key}) : super(key: key);
  final estiloTitulo = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 15.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          _crearImagen(),
          _crearTexto(),
          SizedBox(height: 50.0),
          _botonLogin(context),
          SizedBox(height: 20.0),
          _botonSingup(context),
        ],
      )),
    );
  }

  Widget _crearImagen() {
    return Image(
        height: 300.0,
        image: NetworkImage(
            'https://i.pinimg.com/564x/0b/c6/f2/0bc6f290cb0e2a5204bb7cb7d6114bff.jpg'));
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text('WELCOME',
                textAlign: TextAlign.center, style: estiloTitulo),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
                'Deserunt tempor consectetur labore ipsum voluptate nostrud sit do.',
                textAlign: TextAlign.center,
                style: estiloSubtitulo),
          )
        ],
      ),
    );
  }

  Widget _botonLogin(BuildContext context) {
    return Container(
        width: 320.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          ),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 18.0),
          ),
          onPressed: () => Navigator.pushNamed(context, 'login'),
        ));
  }

  Widget _botonSingup(BuildContext context) {
    return Container(
        width: 320.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          ),
          child: Text(
            'Sing Up',
            style: TextStyle(fontSize: 18.0),
          ),
          onPressed: () => Navigator.pushNamed(context, 'Home'),
        ));
  }
}
