import 'package:flutter/material.dart';
import 'package:prestapaacapp/widgets/sucursales.dart';

class Pantallasucursales extends StatelessWidget {
  const Pantallasucursales({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Solo se muestra el contenido de Sucursales, no el Navbar
          Sucursales(),
        ],
      ),
    );
  }
}
