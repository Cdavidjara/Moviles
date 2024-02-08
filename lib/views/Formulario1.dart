import 'package:flutter/material.dart';
import 'dart:async';

class Formulario1 extends StatefulWidget {
  const Formulario1({Key? key}) : super(key: key);

  @override
  _Formulario1State createState() => _Formulario1State();
}

class _Formulario1State extends State<Formulario1> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startAutoPlay();
  }

  @override
  void dispose() {
    _stopAutoPlay();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoPlay() {
    // Configurar un temporizador para avanzar las imágenes cada 3 segundos
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void _stopAutoPlay() {
    // Detener el temporizador
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIAS'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 50.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                width: 300.0,
                height: 250.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: const ClipOval(
                  child: Image(
                    image: AssetImage('assets/imag/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'BIENVENIDOS',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'CARNICOS, SA',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150, // Altura del carrusel
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('assets/imag/juris.png'),
                  _buildImage('assets/imag/mister.png'),
                  _buildImage('assets/imag/pavo.png'),
                  _buildImage('assets/imag/plu.png'),
                  _buildImage('assets/imag/pronaca.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Image.asset(
        imagePath,
        height: 150,
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
