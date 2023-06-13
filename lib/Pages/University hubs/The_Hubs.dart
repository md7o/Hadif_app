import 'package:flutter/material.dart';
import '../../models/Gover.dart';
import 'Deanships.dart';

class TheHub extends StatelessWidget {
  const TheHub({
    super.key,
    required this.UCs,
  });
  final List<University_Categorys> UCs;
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
      body: ListView.builder(
        padding: const EdgeInsets.all(25),
        itemCount: UCs.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeanshipsPage(),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Theme.of(context).primaryColor.withOpacity(.2),
                          Theme.of(context).primaryColor
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Opacity(
                                opacity: 0.8,
                                child: Image.asset(
                                  UCs[index].imageUrl,
                                  scale: 12,
                                ),
                              ),
                              Text(
                                UCs[index].name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),

      // const Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(vertical: 20),
      //       child: Center(
      //         child: Text(
      //           'نوادي جامعة الملك سعود',
      //           style: TextStyle(color: Colors.white, fontSize: 20),
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 10),
      //     ClubWidget(),
      //     SizedBox(height: 10),
      //   ],
      // ),
    );
  }
}
