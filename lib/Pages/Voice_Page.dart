import 'package:flutter/material.dart';

class VoicePage extends StatelessWidget {
  const VoicePage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 310,
              decoration: const BoxDecoration(
                color: Color(0xFF151d2f),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'مباشر',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'تعديل على الفصول في السنوات القادمة',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'وزير التعليم: يوسف بن عبداللَّه البنيان',
                                style: TextStyle(
                                    color: Color(0xFFC8C8C8), fontSize: 15),
                              ),
                              Icon(
                                Icons.mic,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            'المتواجدين',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          const Divider(
                            indent: 30,
                            endIndent: 30,
                            thickness: 1,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: Image.asset(
                                        'images/man.png',
                                      ),
                                    ),
                                  ),
                                  const Text('عبد الله الرفاعي',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: Image.asset(
                                        'images/man.png',
                                      ),
                                    ),
                                  ),
                                  Text('خالد العنزي',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: Image.asset(
                                        'images/woman.png',
                                      ),
                                    ),
                                  ),
                                  Text('منال المحمدي',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(.2),
                    Theme.of(context).primaryColor
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4,392',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
