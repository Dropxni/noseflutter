import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackbarsPage(),
    );
  }
}

class SnackbarsPage extends StatefulWidget {
  const SnackbarsPage({super.key});

  @override
  State<SnackbarsPage> createState() => _SnackbarsPageState();
}

class _SnackbarsPageState extends State<SnackbarsPage> {
  void _showSimpleSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Hola crack"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _showActionSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Hola :/"),
        action: SnackBarAction(
          label: "cerrar",
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Bye")),
            );
          },
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbars Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _showSimpleSnackbar,
              child: const Text("Presiona"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showActionSnackbar,
              child: const Text("Presiona"),
            ),
          ],
        ),
      ),
    );
  }
}
