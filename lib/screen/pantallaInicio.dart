import 'package:flutter/material.dart';
import 'package:prestapaacapp/widgets/objetos.dart';

class Pantallainicio extends StatefulWidget {
  const Pantallainicio({super.key});

  @override
  State<Pantallainicio> createState() => _PantallainicioState();
}

class _PantallainicioState extends State<Pantallainicio> {
  //obtener el ancho y alto de la pantalla
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
            color: Colors.white,
            height: alturaPantalla,
            width: anchoPantalla,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Objetos(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
