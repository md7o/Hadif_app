import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: GoogleFonts.josefinSans(
            color: Colors.white,
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          color: Theme.of(context).iconTheme.color,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'General',
                  style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          //  Last General code
        ],
      ),
    );
  }
}
