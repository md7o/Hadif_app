import 'package:flutter/material.dart';
import 'package:hadif_app/Pages/Chat_Page.dart';
import 'package:hadif_app/Pages/Type_personal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadif_app/widgets/B_N_B.dart';
import 'Pages/Home_Page.dart';

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
          useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}
