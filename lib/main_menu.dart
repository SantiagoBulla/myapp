import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  // Function to open webpage
  Future<void> _launchURL() async {
    final Uri url = Uri.parse("https://umb.edu.co/");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

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
              onPressed: _launchURL, // Open the UMB website
              child: const Text("Página Institucional"),
            ),
            const SizedBox(height: 20),

            // Buscar Páginas Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // TODO: Implement search page
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
                // TODO: Implement messages page
              },
              child: const Text("Mensajes"),
            ),
          ],
        ),
      ),
    );
  }
}
