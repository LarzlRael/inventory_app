import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryBranchOffice extends StatefulWidget {
  @override
  State<CategoryBranchOffice> createState() => _CategoryBranchOfficeState();
}

class _CategoryBranchOfficeState extends State<CategoryBranchOffice> {
  @override
  Widget build(BuildContext context) {
    final sucursal = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(sucursal),
                _roundedButtons(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1),
              Color.fromRGBO(35, 37, 57, 1),
            ]),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            color: Colors.pink,
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ])),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100.0,
          child: pinkBox,
        ),
      ],
    );
  }

  Widget _titulos(String title) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            Text('Categorias de $title                             ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                )),
          ],
        ),
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBottomRendoneado(Colors.blue, Icons.food_bank, 'Abarrotes'),
            _crearBottomRendoneado(
                Colors.purpleAccent, Icons.directions_bike, 'Verduras'),
          ],
        ),
        TableRow(
          children: [
            _crearBottomRendoneado(Colors.pinkAccent, Icons.clear, 'Limpieza'),
            _crearBottomRendoneado(
                Colors.orange, Icons.no_food_rounded, 'Carnes'),
          ],
        ),
        TableRow(
          children: [
            _crearBottomRendoneado(
                Colors.green, Icons.playlist_add_circle, 'Plasticos'),
            Visibility(
                visible: false,
                child: _crearBottomRendoneado(
                    Colors.red, Icons.collections, 'Photos')),
          ],
        ),
      ],
    );
  }

  Widget _crearBottomRendoneado(
    Color color,
    IconData icono,
    String texto,
  ) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 0.2),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            'list_product',
          );
        },
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0),
              ),
              Text('$texto', style: TextStyle(color: color)),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
