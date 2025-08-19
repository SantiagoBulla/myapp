// lib/search_pages.dart
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchPages extends StatefulWidget {
  const SearchPages({Key? key}) : super(key: key);

  @override
  State<SearchPages> createState() => _SearchPagesState();
}

class _SearchPagesState extends State<SearchPages> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _search() async {
    final input = _controller.text.trim();

    // Validate must start with https://
    if (!input.toLowerCase().startsWith('https://')) {
      Fluttertoast.showToast(
        msg: 'The URL format is incorrect, please try again',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }

    try {
      final Uri url = Uri.parse(input);
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        Fluttertoast.showToast(
          msg: 'The URL no pudo ser abierta',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: 'El formato de la URL es incorrecto, intente de nuevo',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buscar Páginas'), centerTitle: true),
      body: Center(
        // <-- Centers both vertically & horizontally
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // <-- Shrinks column to content
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300, // optional: keep text field nicely sized
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'https://example.com',
                    labelText: 'URL',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.url,
                  textInputAction: TextInputAction.go,
                  onSubmitted: (_) => _search(),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 300, // keep button same width as textfield
                child: ElevatedButton(
                  onPressed: _search,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    backgroundColor: const Color(0xFFA60311), // #A60311
                    foregroundColor: Colors.white, // font color
                  ),
                  child: const Text('Buscar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
