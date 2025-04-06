import 'package:flutter/material.dart';
import 'package:prestapaacapp/screen/pantallaInicio.dart';
import 'package:prestapaacapp/widgets/navbar.dart';
import 'package:flutter/services.dart';
import 'package:prestapaacapp/widgets/sucursales.dart';

void main() {
  //Para cambia el color de la barra de estado.
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.green,
      statusBarBrightness: Brightness.light,
    ),
  );

  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.white,
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Navbar(),
                  Expanded(
                    child: Sucursales(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
