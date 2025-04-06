import 'package:flutter/material.dart';

enum Categoria {
  electronicos,
  jugetes,
  dispositivosinteligentes,
  libros,
  consolas
}

const iconosCategoria = {
  Categoria.dispositivosinteligentes: Icons.computer,
  Categoria.electronicos: Icons.developer_board,
  Categoria.jugetes: Icons.toys,
  Categoria.libros: Icons.book,
  Categoria.consolas: Icons.videogame_asset
};

class Objeto {
  Objeto({
    required this.nombre,
    required this.descripcion,
    required this.categoria,
    required this.precio,
    required this.rutafoto,
  });
  final String nombre;
  final String descripcion;
  final Categoria categoria;
  final double precio;
  final String rutafoto;
}
