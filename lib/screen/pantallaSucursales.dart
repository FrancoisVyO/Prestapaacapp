import 'package:flutter/material.dart';

class Pantallasucursales extends StatefulWidget {
  const Pantallasucursales({super.key});

  @override
  State<Pantallasucursales> createState() => _PantallasucursalesState();
}

class _PantallasucursalesState extends State<Pantallasucursales> {
  @override
  Widget build(BuildContext context) {
    final alturaPantalla = MediaQuery.of(context).size.height * 0.9;
    final anchoPantalla = MediaQuery.of(context).size.width * .8;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
            child: Container(
          color: Colors.lightGreenAccent,
          height: alturaPantalla,
          width: anchoPantalla,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Hola'),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
