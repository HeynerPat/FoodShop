import 'package:flutter/material.dart';

class ComidasPage extends StatelessWidget {
  //const ComidasPage({Key? key}) : super(key: key);

  String _comida = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'eFood',
                style: TextStyle(color: Colors.red),
              ),
              Icon(Icons.notifications, color: Colors.black)
            ]),
        leading: Image(
            image: NetworkImage(
                'https://i.pinimg.com/564x/0b/c6/f2/0bc6f290cb0e2a5204bb7cb7d6114bff.jpg')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _barraBusqueda(context),
            _categorias(),
            _menu(),
            _banner(),
            _comidas()
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _barraBusqueda(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Expanded(
          child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          hintText: 'Search items here...',
          suffixIcon: Icon(Icons.search),
        ),
        onChanged: (valor) => _comida = valor.toString(),
      )),
    );
  }

  Widget _categorias() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '   All Categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _imagenTexto(
                  'https://i.pinimg.com/564x/e0/f5/30/e0f530d95e569c0a90fe31dc45c7f5f9.jpg',
                  'Desayunos'),
              _imagenTexto(
                  'https://i.pinimg.com/564x/d8/71/ce/d871ce2ec8cedb96ad880c3f24642409.jpg',
                  'Carnes'),
              _imagenTexto(
                  'https://i.pinimg.com/564x/41/83/7d/41837d08fd72ad57d5a879d74a1aef29.jpg',
                  'Postres'),
              _imagenTexto(
                  'https://i.pinimg.com/564x/79/cc/3c/79cc3c60e403bd03614c064e37cfec62.jpg',
                  'Caldos'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _imagenTexto(String image, String texto) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white12,
            ),
            child: Column(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                      height: 70.0,
                      width: 70.0,
                      child: Image(
                        image: NetworkImage('$image'),
                        width: 70.0,
                        height: 70.0,
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            )),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.black)),
      ],
    );
  }

  Widget _menu() {
    return Card(
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('  Set Menu', style: TextStyle(fontWeight: FontWeight.bold)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white10,
                  onPrimary: Colors.black,
                  elevation: 0),
              child: Text(
                'View All',
                style: TextStyle(fontSize: 13.0, color: Colors.grey.shade700),
              ),
              onPressed: () {},
            ),
          ],
        ),
        Container(
          height: 175.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _comidasMenu(
                  "https://i.pinimg.com/564x/e2/73/64/e27364cf9877367501a08b94eb2b5319.jpg",
                  "   Tacos",
                  "25"),
              _comidasMenu(
                  "https://i.pinimg.com/736x/84/d1/4f/84d14f3bc24020bb974fba13b1eb6a67.jpg",
                  "   Espagueti",
                  "20"),
              _comidasMenu(
                  "https://i.pinimg.com/564x/17/ee/0d/17ee0d1c0b91570534f8b38ea1438ced.jpg",
                  "   Pizza",
                  "98"),
              _comidasMenu(
                  "https://i.pinimg.com/564x/72/53/0b/72530bd02c51287f54562450f877293a.jpg",
                  "   Ensalada",
                  "50"),
            ],
          ),
        )
      ]),
    );
  }

  Widget _comidasMenu(String imagen, String nombrecomida, String precio) {
    return Container(
      height: 10.0,
      width: 165.0,
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          elevation: 3.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _imagenMenu('$imagen'),
              Text('$nombrecomida',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('   Set Menu',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.red,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('   \$$precio',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _imagenMenu(String image) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      height: 80.0,
                      width: double.infinity,
                      child: Image(
                        image: NetworkImage('$image'),
                        fit: BoxFit.cover,
                      ))),
            ],
          ))
    ]);
  }

  Widget _banner() {
    return Card(
      child: Column(children: <Widget>[
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('  Banner', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          height: 125.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      child: Image(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/ae/77/20/ae77208602df0b116f564178224f585d.jpg'),
                  ))),
              SizedBox(width: 10.0),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      child: Image(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/c1/28/d4/c128d4653e1721fa1317ec4e1457673f.jpg'),
                  ))),
              SizedBox(width: 10.0),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      child: Image(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/af/2d/b1/af2db1c2fb66b6e09219ac937d240245.jpg'),
                  ))),
              /*Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/ae/77/20/ae77208602df0b116f564178224f585d.jpg')),
              SizedBox(width: 10.0),
              Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/c1/28/d4/c128d4653e1721fa1317ec4e1457673f.jpg')),
              SizedBox(width: 10.0),
              Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/af/2d/b1/af2db1c2fb66b6e09219ac937d240245.jpg')),*/
            ],
          ),
        )
      ]),
    );
  }

  Widget _comidas() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Item',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white10,
                    onPrimary: Colors.black,
                    elevation: 0),
                child: Text(
                  'View All',
                  style: TextStyle(fontSize: 13.0, color: Colors.grey.shade700),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            child: Column(
              children: <Widget>[
                _itemComida(
                    'https://i.pinimg.com/564x/d0/8e/dc/d08edc0b35a7fca5cce90572cb11be9f.jpg',
                    'Empandas',
                    '30'),
                _itemComida(
                    'https://i.pinimg.com/564x/b7/1b/85/b71b85bcecf2a892588215251cb41c3c.jpg',
                    'Buñuelos',
                    '25'),
                _itemComida(
                    'https://i.pinimg.com/564x/a3/70/63/a37063ac0204c60ece12e51649b9169a.jpg',
                    'Pollo Asado',
                    '90'),
                _itemComida(
                    'https://i.pinimg.com/564x/96/fa/dc/96fadc66a810591d2fbee311ba485e3f.jpg',
                    'Carne Molida',
                    '55'),
                _itemComida(
                    'https://i.pinimg.com/564x/a4/7c/a2/a47ca20ef18080e68e8faf25793e81d1.jpg',
                    'Papas Fritas',
                    '45'),
                _itemComida(
                    'https://i.pinimg.com/564x/fa/71/6e/fa716ef6d0931d97d65c4c07cc369257.jpg',
                    'Banderillas',
                    '40'),
                _itemComida(
                    'https://i.pinimg.com/564x/ae/bd/c0/aebdc09068e6dc0ab3b7e8f1306d36ac.jpg',
                    'Caldo de res',
                    '65'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imagenComida(String imagen) {
    final accion = Container(
        width: 100.0,
        height: 80.0,
        child: Image(
          image: NetworkImage(
            '$imagen',
          ),
          fit: BoxFit.cover,
        ));
    return Column(children: [
      Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: accion,
              ),
            ],
          ))
    ]);
  }

  Widget _itemComida(String imagen, String nombrecomida, String precio) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [_imagenComida('$imagen')],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$nombrecomida',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                ],
              ),
              SizedBox(height: 2.0),
              Text('\$$precio',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromARGB(255, 252, 252, 253),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: ('Favorite')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps_sharp,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: ('Menu'))
          ],
          fixedColor: Colors.grey,
        ));
  }
}
