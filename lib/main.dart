import 'package:flutter/material.dart';
import 'package:hadif_app/screens/Type_personal.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TypePersonal(),
      theme: ThemeData(
        primaryColor: const Color(0xFF203E75),
        scaffoldBackgroundColor: const Color(0xFF121218),
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
