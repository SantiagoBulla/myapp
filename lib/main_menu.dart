import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menú Principal"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Página Institucional Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                print('To be defined: Página Institucional');
              },
              child: const Text("Página Institucional"),
            ),
            const SizedBox(height: 20),

            // Buscar Páginas Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                print('To be defined: Buscar Páginas');
              },
              child: const Text("Buscar Páginas"),
            ),
            const SizedBox(height: 20),

            // Mensajes Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // TODO: Implement functionality
                print('To be defined: Mensajes');
              },
              child: const Text("Mensajes"),
            ),
          ],
        ),
      ),
    );
  }
}
