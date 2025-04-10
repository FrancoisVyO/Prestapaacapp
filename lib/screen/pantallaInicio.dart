import 'package:flutter/material.dart';

class Pantallainicio extends StatelessWidget {
  const Pantallainicio({super.key});

  @override
  Widget build(BuildContext context) {
    final alturaPantalla = MediaQuery.of(context).size.height * 1;
    final anchoPantalla = MediaQuery.of(context).size.width * 1;

    return Center(
      child: Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(10),
        alignment: Alignment.topLeft,
        height: alturaPantalla,
        width: anchoPantalla,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Bienvenido a PrestaPaAcAPP',
              style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/Colores.png'),
          ],
        ),
      ),
    );
  }
}
