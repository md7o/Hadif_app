import 'package:flutter/material.dart';
import 'package:hadif_app/Pages/Search_Page.dart';
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
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/canva.png',
                fit: BoxFit.contain,
                height: 42,
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Hero(
                    tag: 'hlao',
                    child: Material(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ));
                              },
                              icon: const Icon(Icons.search))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
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
