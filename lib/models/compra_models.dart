import 'dart:convert';

Compra compraFromJson(String str) => Compra.fromJson(json.decode(str));

String compraToJson(Compra data) => json.encode(data.toJson());

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
