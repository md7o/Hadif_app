import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadif_app/Pages/University%20hubs/University_Page.dart';
import 'Login_Government.dart';
import 'Login_Individuals.dart';

class TypePersonal extends StatefulWidget {
  const TypePersonal({super.key});

  @override
  State<TypePersonal> createState() => _TypePersonalState();
}

class _TypePersonalState extends State<TypePersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121218),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/canva.png',
            scale: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: Column(
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return LoginIndividuals(
                            transitionAnimation: animation,
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 1300),
                      ),
                    ),
                    child: Container(
                      width: 160,
                      height: 150,
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
                          Opacity(
                            opacity: 0.2,
                            child: Image.asset(
                              'images/squ.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'الأفراد',
                                style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 25,
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

                  // individuals=============================

                  const SizedBox(
                    height: 20,
                  ),

                  // governments==================================

                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return LoginGovernment(
                            transitionAnimation: animation,
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 1300),
                      ),
                    ),
                    child: Container(
                      width: 160,
                      height: 150,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: Image.asset(
                              'images/squ.png',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              child: const Text(
                                'الجهات',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
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

                  // governments==================================

                  const SizedBox(
                    height: 20,
                  ),

                  // university==================================

                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return UniversityPage(
                            transitionAnimation: animation,
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 1300),
                      ),
                    ),
                    child: Container(
                      width: 160,
                      height: 150,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: Image.asset(
                              'images/squ.png',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              child: const Text(
                                'الجامعات',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
