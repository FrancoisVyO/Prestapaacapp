import 'package:flutter/material.dart';
import 'package:prestapaacapp/service/sucursalesRegistradas.dart';
import 'package:prestapaacapp/widgets/objetos.dart'; 

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
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          sucursalesRegistradas.length,
          (index) => TextButton(
            style: TextButton.styleFrom(overlayColor: Colors.transparent),
            onPressed: () {
              // Navegar a la pantalla Objetos
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Objetos(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                color: const Color.fromARGB(255, 255, 208, 8),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Image.asset(sucursalesRegistradas[index].rutaimagen.toString()),
                  const SizedBox(height: 12),
                  Text(
                    'Firs Cash de ${sucursalesRegistradas[index].municipio}, ${sucursalesRegistradas[index].estado}',
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
