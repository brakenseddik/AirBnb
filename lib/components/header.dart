import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 15),
      child: Text(
        'What are you looking for, Braken !?',
        style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black54),
      ),
    );
  }
}
