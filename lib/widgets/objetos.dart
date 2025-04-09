import 'package:flutter/material.dart';
import 'package:prestapaacapp/models/objeto.dart';
import 'package:prestapaacapp/service/objetosRegistrados.dart';
import 'package:prestapaacapp/widgets/modalDeObjeto.dart';
import 'package:prestapaacapp/widgets/navbar.dart'; // ✅ importante

class Objetos extends StatefulWidget {
  const Objetos({super.key});

  @override
  State<StatefulWidget> createState() => _ObjetosState();
}

class _ObjetosState extends State<Objetos> {
  void _abrirHojaModal(Objeto objeto) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Modaldeobjeto(objeto: objeto);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const Navbar(), // ✅ mantiene la barra
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      objetosRegistrados.length,
                      (index) => TextButton(
                        style: TextButton.styleFrom(
                          overlayColor: Colors.transparent,
                        ),
                        onPressed: () {
                          _abrirHojaModal(objetosRegistrados[index]);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          padding: const EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.lightGreen[100],
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.transparent, width: 8.0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                  objetosRegistrados[index].rutafoto.toString(),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    color: Colors.black,
                                    iconosCategoria[
                                        objetosRegistrados[index].categoria],
                                  ),
                                  Text(
                                    objetosRegistrados[index].nombre,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                '\$${objetosRegistrados[index].precio.toString()}',
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
