import 'package:flutter/material.dart';
import 'package:prestapaacapp/screen/pantallaInicio.dart';
import 'package:prestapaacapp/screen/pantallaSucursales.dart';
import 'package:prestapaacapp/widgets/navbar.dart';
import 'package:prestapaacapp/screen/pantallaInicio.dart';
import 'package:prestapaacapp/screen/pantallaSucursales.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;  // Para mantener el índice del navbar

  // Método para cambiar la página
  void _onNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // El contenido que cambiará según la selección
    Widget _getPageContent() {
      switch (_currentIndex) {
        case 0:
          return Pantallainicio(); // Contenido para la pantalla de inicio
        case 1:
          return Pantallasucursales(); // Contenido para la pantalla de sucursales
        default:
          return Pantallainicio(); // Default
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Navbar(
            selectedIndex: _currentIndex,  // Le pasamos el índice seleccionado
            onIndexChanged: _onNavBarTapped,  // Cambiar el índice cuando se toque
          ),
          Expanded(
            child: _getPageContent(),  // Aquí cambia el contenido según el índice
          ),
        ],
      ),
    );
  }
}
