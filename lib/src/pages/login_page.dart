import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final estiloTitulo = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  String _numeroTelefono = "9831172561";
  String _password = "";
  bool _bloquearCheck = false;

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _crearImagen(),
          SizedBox(height: 10.0),
          _crearTitulo(),
          SizedBox(height: 10.0),
          Text("    Mobile Number:"),
          _crearNumero(),
          SizedBox(height: 5.0),
          Text("    Password:"),
          _crearPassword(),
          _checkBoxAndForgot(),
          _botonIniciarSesion(context),
          _crearCuenta(),
        ],
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
        height: 250.0,
        image: NetworkImage(
            'https://i.pinimg.com/564x/0b/c6/f2/0bc6f290cb0e2a5204bb7cb7d6114bff.jpg'));
  }

  Widget _crearTitulo() {
    return Text('Login', textAlign: TextAlign.center, style: estiloTitulo);
  }

  Widget _crearNumero() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Expanded(
          child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        onChanged: (valor1) {
          _numeroTelefono = valor1.toString();
        },
      )),
    );
  }

  Widget _crearPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Expanded(
          child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        onChanged: (valor) => _password = valor.toString(),
      )),
    );
  }

  Widget _checkBox() {
    return Column(
      children: [
        CheckboxListTile(
          title: Text(
            'Remember me',
            style: TextStyle(fontSize: 14.0),
          ),
          value: _bloquearCheck,
          onChanged: (valor) {
            setState(() {
              _bloquearCheck = valor!;
            });
          },
        ),
      ],
    );
  }

  Widget _forgot() {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white10, onPrimary: Colors.black, elevation: 0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(fontSize: 12.0),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _checkBoxAndForgot() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: _checkBox()),
          Expanded(child: _forgot()),
        ],
      ),
    );
  }

  Widget _botonIniciarSesion(BuildContext context) {
    return Container(
        child: Center(
            child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: EdgeInsets.symmetric(horizontal: 140.0, vertical: 15.0),
      ),
      child: Text(
        'Login',
        style: TextStyle(fontSize: 18.0),
      ),
      onPressed: () {
        if (_numeroTelefono == "9831172561" && _password == "Heynerk31") {
          Navigator.pushNamed(context, 'perfil');
        } else {
          var snackBar =
              SnackBar(content: Text('Numero y/o Contraseña incorrectos'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    )));
  }

  Widget _crearCuenta() {
    return Center(
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text('Create an Account?',
            style: TextStyle(fontSize: 12.0, color: Colors.grey)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white10, onPrimary: Colors.black, elevation: 0),
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 12.0),
          ),
          onPressed: () {},
        ),
      ]),
    );
  }
}
