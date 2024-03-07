import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/views/compra_page.dart';
import 'package:flutter/material.dart';

class CardCompra extends StatelessWidget {
  const CardCompra({Key? key, required this.compra}) : super(key: key);

  final Compra compra;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompraPage(compra: compra),
            ),
          );
        },
        title: Text(compra.nombreProd.toString()),
        subtitle: Text(compra.descripcion.toString(),
            style: Theme.of(context).textTheme.subtitle1),
        trailing: Text("\$${compra.precio.toStringAsFixed(2)}", //
            style: Theme.of(context).textTheme.headline3),
      ),
    );
  }
}
