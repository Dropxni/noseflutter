import 'package:flutter/material.dart';

class ContainersPage extends StatefulWidget {
  const ContainersPage({super.key});

  @override
  State<ContainersPage> createState() => _ContainersPageState();
}

class _ContainersPageState extends State<ContainersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contenedores Page')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageContainer(),
                SizedBox(height: 10),
                ImageContainer(),
                SizedBox(height: 10),
                ImageContainer(),
                SizedBox(height: 10),
                ImageContainer(),
                SizedBox(height: 10),
                ImageContainer(),
                SizedBox(height: 10),
                ImageContainer(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          height: 250,
          child: Image.network(
            'https://th.bing.com/th/id/OIP.4PjzIMCCLJuzytsDU-1g9QHaEK?rs=1&pid=ImgDetMain',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              color: Colors.black,
            ),
            height: 40,
            width: 40,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
