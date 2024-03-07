import 'package:examen_002/main.dart';
import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/carnedevaca.dart';
import 'package:examen_002/views/compra_page.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:examen_002/views/embutidos_views.dart';
import 'package:flutter/material.dart';

class Opcion3 extends StatelessWidget {
  const Opcion3({Key? key}) : super(key: key);

  void _navigateToCompra(BuildContext context, String nombreProducto,
      String descripcion, double precio, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Registro(
          nombreProducto: nombreProducto,
          descripcion: descripcion,
          precio: precio,
          imagePath: imagePath,
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context, String imagePath, String name,
      String description, double price) {
    return GestureDetector(
      onTap: () {
        _navigateToCompra(
          context,
          name,
          description,
          price,
          imagePath, // Aquí se agrega el argumento precio
        );
      },
      child: Column(
        children: [
          SizedBox(
            width: 150.0,
            height: 110.0,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(description),
          Text('\$$price'),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIAS'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 33, 219, 243),
              ),
              child: const Center(
                child: Text(
                  'Productos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                _navigateToFormulario1(context); // Cambia a la función adecuada
              },
            ),
            ListTile(
              leading: Icon(Icons.kitchen),
              title: const Text('EMBUTIDOS',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario4(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: const Text('CARNE DE VACA',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario2(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bakery_dining),
              title: const Text('CARNE DE CERDO',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario3(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: const Text('CARNE DE POLLO',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario5(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CARNE DE CERDO',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          _buildImage(
                            context,
                            'assets/imag/ce1.png',
                            'CHULETA',
                            'Chuleta de cerdo fresca y jugosa',
                            10.50,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce2.png',
                            'CHULETA AHUMADA',
                            'Chuleta ahumada con un sabor irresistible',
                            12.75,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce3.png',
                            'CARNE MOLIDA',
                            'Carne de cerdo molida, ideal para preparar tus platos favoritos',
                            8.25,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce9.png',
                            'BRAZO',
                            'Brazo de cerdo fresco y de alta calidad',
                            15.00,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: [
                          _buildImage(
                            context,
                            'assets/imag/ce5.png',
                            'PATAS',
                            'Patas de cerdo frescas y sabrosas',
                            9.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce6.png',
                            'FRITADA',
                            'Fritada de cerdo casera y deliciosa',
                            11.50,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce7.png',
                            'COSTILLA',
                            'Costilla de cerdo tierna y jugosa',
                            13.25,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce8.png',
                            'PIERNA',
                            'Pierna de cerdo fresca y perfecta para asados',
                            18.75,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: [
                          _buildImage(
                            context,
                            'assets/imag/ce4.png',
                            'CUERO',
                            'Cuero de cerdo crujiente y delicioso',
                            7.50,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce12.png',
                            'CHICHARRON',
                            'Chicharrón de cerdo dorado y sabroso',
                            6.75,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce10.png',
                            'LOMO',
                            'Lomo de cerdo premium, jugoso y tierno',
                            20.00,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/ce11.png',
                            'OREJA',
                            'Oreja de cerdo cocida y lista para servir',
                            5.50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  void _navigateToFormulario1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyHomePage()),
    );
  }

  void navigateToFormulario4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion1()),
    );
  }

  void navigateToFormulario2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion2()),
    );
  }

  void navigateToFormulario3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion3()),
    );
  }

  void navigateToFormulario5(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion4()),
    );
  }
}
