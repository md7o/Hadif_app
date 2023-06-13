import 'package:flutter/material.dart';

import '../../widgets/DeanshipsWidget.dart';

class DeanshipsPage extends StatelessWidget {
  const DeanshipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/canva.png',
              fit: BoxFit.contain,
              height: 42,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.notifications))
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 1,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        children: const [
          DeanshipsWidget1(),
          DeanshipsWidget2(),
          DeanshipsWidget3(),
          DeanshipsWidget4(),
        ],
      ),
    );
  }
}
