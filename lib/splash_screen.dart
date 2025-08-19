import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/mainMenu');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo at top center
            Image.asset('assets/logo.png', height: 120),
            const SizedBox(height: 20),

            // Program details
            const Text(
              "Ingeniería de Software",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFA60311),
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ), // Default style for all text
                children: <TextSpan>[
                  TextSpan(
                    text: 'Integrantes:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF313A4F), // Apply the dark gray color
                    ),
                  ),
                  TextSpan(
                    text: ' Fernanda, Santiago Bulla',
                  ), // The rest of the text
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ), // Default style for all text
                children: <TextSpan>[
                  TextSpan(
                    text: 'Curso:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF313A4F), // Apply the dark gray color
                    ),
                  ),
                  TextSpan(text: ' Computación Móvil'), // The rest of the text
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ), // Default style for all text
                children: <TextSpan>[
                  TextSpan(
                    text: 'Instructor:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF313A4F), // Apply the dark gray color
                    ),
                  ),
                  TextSpan(text: ' Robert Osorio'), // The rest of the text
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ), // Default style for all text
                children: <TextSpan>[
                  TextSpan(
                    text: 'Semestre:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF313A4F), // Apply the dark gray color
                    ),
                  ),
                  TextSpan(text: ' N° 7'), // The rest of the text
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ), // Default style for all text
                children: <TextSpan>[
                  TextSpan(
                    text: 'Año:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF313A4F), // Apply the dark gray color
                    ),
                  ),
                  TextSpan(text: ' 2025'), // The rest of the text
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
