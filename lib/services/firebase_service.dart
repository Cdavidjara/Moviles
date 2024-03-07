import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer' as developer;

import 'package:examen_002/models/compra_models.dart';

class FirestoreServices {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<bool> addCompra(Compra _compra) async {
    try {
      await db.collection("compra").add(_compra.toJson());
      return true;
    } catch (ex) {
      developer.log(ex.toString());
      return false;
    }
  }
}
