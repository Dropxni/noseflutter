import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Floating Extended'),
        icon: const Icon(Icons.cable),
      ),
      appBar: AppBar(title: const Text('Buttons Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8.0, // Espaciado entre los botones
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_chart),
            ),
            ToggleButtons(
              isSelected: const [true, false, false],
              children: const [
                Icon(Icons.add),
                Icon(Icons.favorite),
                Icon(Icons.back_hand),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text('Icon Button'),
              iconAlignment: IconAlignment.end,
            ),
          ],
        ),
      ),
    );
  }
}
