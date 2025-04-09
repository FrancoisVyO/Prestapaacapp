import 'package:prestapaacapp/models/sucursal.dart';
import 'package:prestapaacapp/service/objetosRegistrados.dart';

final List<Sucursal> sucursalesRegistradas = [
  Sucursal(
    municipio: 'Pénjamo',
    codigopostal: '36900',
    direccion: 'Arteaga #38',
    estado: 'Guanajuato',    
    objetosdellugar: objetosRegistrados,
    rutaimagen:'assets/images/Penjamo.png'
  ),
  Sucursal(
    municipio: 'Abasolo',
    codigopostal: '36900',
    direccion: 'Arteaga #38',
    estado: 'Guanajuato',
    objetosdellugar: objetosRegistrados2,
    rutaimagen:'assets/images/Abasolo.png'
  ),
  Sucursal(
    municipio: 'Irapuato',
    codigopostal: '36900',
    direccion: 'Arteaga #38',
    estado: 'Guanajuato',
    objetosdellugar: objetosRegistrados3,
    rutaimagen:'assets/images/Irapuato.png'
  ),
];
