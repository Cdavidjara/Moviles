import 'dart:convert';

Compra compraFromJson(String str) => Compra.fromJson(json.decode(str));

String compraToJson(Compra data) => json.encode(data.toJson());

class Compra {
  String nombreProd;
  String descripcion;
  double precio;

  Compra({
    required this.nombreProd,
    required this.descripcion,
    required this.precio,
  });

  factory Compra.fromJson(Map<String, dynamic> json) => Compra(
        nombreProd: json["nombreProd"],
        descripcion: json["descripcion"],
        precio: json["precio"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "nombreProd": nombreProd,
        "descripcion": descripcion,
        "precio": precio,
      };
  static Compra init() {
    return Compra(nombreProd: '', descripcion: '', precio: 0.0);
  }
}
