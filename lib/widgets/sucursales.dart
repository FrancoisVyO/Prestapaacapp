import 'package:flutter/material.dart';
import 'package:prestapaacapp/service/sucursalesRegistradas.dart';

class Sucursales extends StatefulWidget {
  const Sucursales({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SucursalesState();
  }
}

class _SucursalesState extends State<Sucursales> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          sucursalesRegistradas.length,
          (index) => TextButton(
            style: TextButton.styleFrom(
              overlayColor: Colors.transparent
            ),
              onPressed: () {},
              child: Container(
                color: Colors.amber,
                child: Text(sucursalesRegistradas[index].municipio),
              ))),
    );
  }
}
