import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/category.dart';
import '../widgets/B_N_B.dart';
import '../widgets/Slider_Code.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Center(
            child: Text('الرئيسية'),
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Column(
              children: [
                SliderCode(),
                SizedBox(height: 30),
                SliderCode2(),
                SizedBox(height: 30),
                SliderCode3(),
                SizedBox(height: 30),
                SliderCode4(),
                SizedBox(height: 30),
              ],
            ),
          ],
        ));
  }
}
