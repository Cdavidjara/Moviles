import 'package:examen_002/models/compra_models.dart';
import 'package:flutter/material.dart';

class CompraPage extends StatelessWidget {
  const CompraPage({Key? key, required this.compra}) : super(key: key);

  final Compra compra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(compra.nombreProd)),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(compra.nombreProd,
                    style: Theme.of(context).textTheme.headline5),
              ),
              Text(compra.descripcion),
              Text(
                  '\$${compra.precio.toStringAsFixed(2)}'), // Formateo el precio a 2 decimales
            ],
          ),
        ),
      ),
    );
  }
}
