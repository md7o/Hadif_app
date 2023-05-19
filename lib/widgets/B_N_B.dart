import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../screens/Chat_Page.dart';
import '../screens/Destinations_Gover.dart';
import '../screens/Home_Page.dart';
import '../screens/Setting_Page.dart';

class BNB extends StatefulWidget {
  const BNB({
    super.key,
    required this.transitionAnimation,
  });
  final Animation<double> transitionAnimation;

  @override
  State<BNB> createState() => _BNBState();
}
// body: pages[selectedIndex],

class _BNBState extends State<BNB> {
  int selectedIndex = 0;

  void navigatedBottomBar(int index) {
    setState(
      () {
        selectedIndex = index;
      },
    );
  }

  final List<Widget> pages = [
    const HomePage(),
    const DestinationsGover(),
    const chatPage(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Theme.of(context).primaryColor,
        height: 60,
        animationDuration: const Duration(milliseconds: 600),
        onTap: navigatedBottomBar,
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.location_city_outlined,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.chat,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.settings_outlined,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
