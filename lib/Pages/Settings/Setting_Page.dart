import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'Setting_Widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 130,
              height: 100,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Image.asset(
                  'images/man.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'محمد أيمن',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Text(
            'رقم الهوية: 11223344',
            style: TextStyle(
              color: Color.fromARGB(142, 255, 255, 255),
              fontSize: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                const modeWidget(),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Color(0x73FFFFFF),
                ),
                CvWidget(),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Color(0x73FFFFFF),
                ),
                Follow(),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Color(0x73FFFFFF),
                ),
                const contantWidget(),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Color(0x73FFFFFF),
                ),
                InkWell(
                    onTap: () async {
                      await Share.share(
                          'World Cars includes many famous cars from 4 countries, America - Japan - Germany - South Korea. https://play.google.com/store/apps/details?id=com.world.cars.worldcars');
                    },
                    child: const shareWidget()),
                const Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Color(0x73FFFFFF),
                ),
                const sourcesWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
