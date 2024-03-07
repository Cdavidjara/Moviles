import 'package:examen_002/main.dart';
import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/views/carnedecerdo.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/compra_page.dart';
import 'package:examen_002/views/embutidos_views.dart';
import 'package:flutter/material.dart';
import 'package:examen_002/views/compra_views.dart';

class Opcion2 extends StatelessWidget {
  const Opcion2({Key? key}) : super(key: key);

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
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                ); // Cambia a la función adecuada
              },
            ),
            ListTile(
              leading: Icon(Icons.kitchen),
              title: const Text('EMBUTIDOS',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Opcion1()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: const Text('CARNE DE VACA',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bakery_dining),
              title: const Text('CARNE DE CERDO',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Opcion3()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: const Text('CARNE DE POLLO',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Opcion4()),
                );
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
              'CARNE DE VACA',
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
                            'assets/imag/va1.png',
                            'CARNE SUAVE',
                            'Carne de vaca suave y jugosa',
                            10.50,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va2.png',
                            'CHULETA',
                            'Chuleta de vaca premium, perfecta para asar',
                            12.75,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va3.png',
                            'CARNE MOLIDA',
                            'Carne de vaca molida, ideal para hamburguesas y guisos',
                            8.25,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va9.png',
                            'GUATITA',
                            'Guatita de vaca fresca y lista para cocinar',
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
                            'assets/imag/va5.png',
                            'LOMO',
                            'Lomo de vaca tierno y jugoso, perfecto para cortes premium',
                            9.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va6.png',
                            'COSTILLA',
                            'Costilla de vaca ahumada, ideal para barbacoas',
                            11.50,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va7.png',
                            'HUESO',
                            'Hueso de vaca para caldos y sopas nutritivas',
                            13.25,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va8.png',
                            'HIGADO',
                            'Hígado de vaca fresco y lleno de nutrientes',
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
                            'assets/imag/va4.png',
                            'CARNE FILETEADA',
                            'Carne de vaca fileteada, perfecta para preparar a la plancha',
                            7.50,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va11.png',
                            'CARNE DE ESTOFADO',
                            'Carne de vaca de estofado, ideal para platos de cocción lenta',
                            6.75,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va12.png',
                            'PECHO',
                            'Pecho de vaca jugoso y lleno de sabor',
                            14.00,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/va10.png',
                            'PATA DE RES',
                            'Pata de vaca para sopas y guisos reconfortantes',
                            17.25,
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
}
