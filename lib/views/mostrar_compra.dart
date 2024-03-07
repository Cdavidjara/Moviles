import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/views/compra_card.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  final Stream<QuerySnapshot> _compraRef =
      FirebaseFirestore.instance.collection("compra").snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _compraRef,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text("Ha ocurrido un error"));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: Text("Descargando compras..."));
        }

        if (!snapshot.hasData) {
          return const Center(child: Text("No hay compras..."));
        }

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
              final content = document.data()! as Map<String, dynamic>;
              Compra newCompra = Compra.fromJson(content);
              return CardCompra(compra: newCompra);
            }).toList()),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Registro(
                            nombreProducto: 'Nombre del producto',
                            descripcion: 'Descripción del producto',
                            precio: 0.0, // Precio del producto
                          ))),
                );
              },
              child: const Icon(Icons.bakery_dining_sharp)),
        );
      },
    );
  }
}
