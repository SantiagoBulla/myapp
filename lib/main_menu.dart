// lib/main_menu.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'search_pages.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  Future<void> _launchInstitutionalPage() async {
    final Uri url = Uri.parse("https://umb.edu.co/");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menú de opciones"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Institutional Page Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color(
                  0xFFA60311,
                ), // Button background (#A60311)
                foregroundColor: Colors.white, // Font color (white)
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              onPressed: _launchInstitutionalPage,
              child: const Text("Página Institucional"),
            ),
            const SizedBox(height: 20),

            // Search Pages Button -> navigate to new screen
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color(
                  0xFF2E7731,
                ), // Button background (#A60311)
                foregroundColor: Colors.white, // font color
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SearchPages()),
                );
              },
              child: const Text("Buscar Páginas"),
            ),
            const SizedBox(height: 20),

            // Messages Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color(
                  0xFF333C88,
                ), // Button background (#A60311)
                foregroundColor: Colors.white, // font color
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
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
