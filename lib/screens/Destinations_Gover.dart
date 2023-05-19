import 'package:flutter/material.dart';
import 'package:hadif_app/data.dart';

import '../models/Gover.dart';

class DestinationsGover extends StatelessWidget {
  const DestinationsGover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('LuckyRoller'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 1,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        children: [
          for (final category in data)
            Row(
              children: [
                for (Roller roll in (category.items))
                  Expanded(
                    child: InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ,
                      //   ),
                      // ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (roll.imageUrl.isNotEmpty)
                              Image.asset(
                                roll.imageUrl,
                                width: 90,
                              ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              roll.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
    ;
  }
}
