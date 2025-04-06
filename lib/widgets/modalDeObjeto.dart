import 'package:flutter/material.dart';
import 'package:prestapaacapp/models/objeto.dart';

class Modaldeobjeto extends StatelessWidget {
  const Modaldeobjeto({super.key, required this.objeto});
  final Objeto objeto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          objeto.nombre.toString(),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                objeto.nombre,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                objeto.descripcion.toString(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text('\$${objeto.precio}'),
              SizedBox(
                height: 16,
              ),
              Image.asset(
                objeto.rutafoto.toString(),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
