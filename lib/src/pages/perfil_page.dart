import 'package:flutter/material.dart';
import 'package:foodshop/src/providers/menu_provider.dart';
import 'package:foodshop/src/utils/icono_string_util.dart';

class PerfilPage extends StatelessWidget {
  //const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        _datosPerfil(),
        _lista(),
        _cerrarSesion(context),
      ]),
    );
  }

  Widget _datosPerfil() {
    return Container(
      width: double.infinity,
      height: 220.0,
      color: Colors.red,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _imagenPerfil(),
          Text(
            'Heyner Hessiel Pat Canul',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Calle 51x52 y 54, Javier Rojo Gomez',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          )
        ],
      )),
    );
  }

  Widget _imagenPerfil() {
    final imagen = Container(
        height: 80.0,
        child: Image(
            image: NetworkImage(
                'https://scontent.fmex32-1.fna.fbcdn.net/v/t1.6435-9/80623491_246341743001707_5574155049493331968_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=a4a2d7&_nc_ohc=SHeaG5skkmcAX9ITT1A&_nc_oc=AQks6-I21P64CflNjpU7e9dTUV5YLciK3yaEjf0ijQULTpECNaVMnawUcdIhaIPuMlU&_nc_ht=scontent.fmex32-1.fna&oh=00_AT-98z2ytmUwVEArCWnIhuzSZ2vC5xu42XObV2sDFE21uQ&oe=625C8E79')));

    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(360.0),
                  child: imagen,
                ),
              ],
            )),
        SizedBox(height: 15.0),
      ],
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Column(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data == null) {
      return [];
    }

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title:
            Text(opt['texto'], style: TextStyle(fontWeight: FontWeight.bold)),
        leading: getIcon(opt['icon']),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          //     final route = MaterialPageRoute(builder: (context) => AlertPage());
          //     Navigator.push(context, route):
        },
      );
      opciones..add(widgetTemp);
    });
    return opciones;
  }

  Widget _cerrarSesion(BuildContext context) {
    return ListTile(
        title: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.logout, color: Colors.black),
        onTap: () => Navigator.pushNamed(context, 'bienvenido'));
  }
}
