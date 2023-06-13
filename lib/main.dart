import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/Type_personal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TypePersonal(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF203E75),
        scaffoldBackgroundColor: const Color(0xFF121218),
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
