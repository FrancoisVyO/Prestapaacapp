import 'package:prestapaacapp/models/objeto.dart';

class Sucursal {
  Sucursal({
    required this.municipio,
    required this.codigopostal,
    required this.direccion,
    required this.estado,
    required this.objetosdellugar,
    required this.rutaimagen,
  });
  final String municipio;
  final String codigopostal;
  final String direccion;
  final String estado;
  final List<Objeto> objetosdellugar;
  final String rutaimagen;
}
