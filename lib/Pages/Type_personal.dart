import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadif_app/Pages/Login_Government.dart';

import 'Login_Individuals.dart';

class TypePersonal extends StatelessWidget {
  const TypePersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121218),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('imgaes/logo.png'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60),
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
                      height: 170,
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
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'الأفراد',
                                style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 30,
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
                  const SizedBox(
                    height: 30,
                  ),
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
                      height: 170,
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
                                  fontSize: 30,
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
