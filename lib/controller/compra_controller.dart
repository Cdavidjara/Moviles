import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CompraController {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/compra_data.txt');
  }

  Future<void> writeCompra(Compra compra) async {
    final file = await _localFile;
    final encodedCompra = compraToJson(compra);
    await file.writeAsString(encodedCompra);
  }

  Future<Compra?> readCompra() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return compraFromJson(contents);
    } catch (e) {
      // Manejar errores al leer el archivo
      return null;
    }
  }
}

String compraToJson(Compra data) => json.encode(data.toJson());

Compra compraFromJson(String str) => Compra.fromJson(json.decode(str));

class Compra {
  String cedula;
  String nombre;
  String direccion;
  String nombreProd;
  String descripcion;
  double presio;

  Compra({
    required this.cedula,
    required this.nombre,
    required this.direccion,
    required this.nombreProd,
    required this.descripcion,
    required this.presio,
  });

  factory Compra.fromJson(Map<String, dynamic> json) => Compra(
        cedula: json["cedula"],
        nombre: json["nombre"],
        direccion: json["direccion"],
        nombreProd: json["nombreProd"],
        descripcion: json["descripcion"],
        presio: json["presio"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "cedula": cedula,
        "nombre": nombre,
        "direccion": direccion,
        "nombreProd": nombreProd,
        "descripcion": descripcion,
        "presio": presio,
      };
}
