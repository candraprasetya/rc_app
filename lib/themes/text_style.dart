import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin textKu {
  static TextStyle general = GoogleFonts.poppins();
  static TextStyle headline = GoogleFonts.poppins(
    fontSize: 24,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
}
