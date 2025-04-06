import 'package:flutter/material.dart';
import 'package:prestapaacapp/models/objeto.dart';
import 'package:prestapaacapp/service/objetosRegistrados.dart';
import 'package:prestapaacapp/widgets/modalDeObjeto.dart';

class Objetos extends StatefulWidget {
  const Objetos({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ObjetosState();
  }
}

class _ObjetosState extends State<Objetos> {
  void _abrirHojaModal(Objeto objeto) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Modaldeobjeto(objeto: objeto);
        });
  }

  @override
  Widget build(BuildContext context) {    
    return Column(
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
            margin: EdgeInsets.only(bottom: 3, top: 3),
            padding: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: Colors.lightGreen[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent, width: 8.0),
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
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
                      iconosCategoria[objetosRegistrados[index].categoria],
                    ),
                    Text(
                      objetosRegistrados[index].nombre,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Text(
                  style: TextStyle(color: Colors.black),
                  '\$${objetosRegistrados[index].precio.toString()}',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
