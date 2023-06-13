import 'package:flutter/material.dart';
import 'package:hadif_app/data.dart';
import 'package:hadif_app/models/Gover.dart';
import '../Saud_Club.dart';
import 'The_Hubs.dart';

class UniversityPage extends StatefulWidget {
  const UniversityPage({
    super.key,
    required this.transitionAnimation,
  });
  final Animation<double> transitionAnimation;
  @override
  State<UniversityPage> createState() => _UniversityPageState();
}

class _UniversityPageState extends State<UniversityPage> {
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
      body: AnimatedBuilder(
        animation: widget.transitionAnimation,
        builder: (context, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -1),
              end: const Offset(0, 0),
            ).animate(
              CurvedAnimation(
                curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                parent: widget.transitionAnimation,
              ),
            ),
            child: child,
          );
        },
        child: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount: 2,
          ),
          children: [
            for (final category2 in univer)
              Row(
                children: [
                  for (University roll in (category2.saudi_U))
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TheHub(UCs: roll.UC),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [
                                Theme.of(context).primaryColor.withOpacity(.2),
                                Theme.of(context).primaryColor
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (roll.imageUrl.isNotEmpty)
                                Opacity(
                                  opacity: 0.2,
                                  child: Image.asset(
                                    roll.imageUrl,
                                  ),
                                ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    roll.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
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
      ),
    );
  }
}
