import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Counter Page"),
            subtitle: const Text("Stateful Widget counter"),
            leading: const Icon(Icons.airplane_ticket_outlined),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => (
              Navigator.pushNamed(context, '/counter')
            ),
          ),
          ListTile(
            title: const Text("Contenedores Page"),
            subtitle: const Text("Contenedores"),
            leading: const Icon(Icons.alarm_off_outlined),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => (
              Navigator.pushNamed(context, '/contenedores')
            ),
          ),
          ListTile(
            title: const Text("Botones"),
            subtitle: const Text("Contenedores"),
            leading: const Icon(Icons.alarm_off_outlined),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => (
              Navigator.pushNamed(context, '/buttons')
            ),
          ),
          ListTile(
            title: const Text("Cards"),
            subtitle: const Text("Disenio de Cards"),
            leading: const Icon(Icons.card_giftcard),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => (
              Navigator.pushNamed(context,'/cards' )
            ),
          ),
          ListTile(
            title: const Text("SnackBar"),
            subtitle: const Text("2 SnackBars"),
            leading: const Icon(Icons.card_giftcard),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => (
              Navigator.pushNamed(context,'/snackbars' )
            ),

          )
        ],
      ),
    );
  }
}

//como implementar un tema global a mi appbar