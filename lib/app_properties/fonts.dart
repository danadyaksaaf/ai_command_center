import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppFonts {
  static TextStyle regular = GoogleFonts.googleSans(
    fontWeight: FontWeight.normal,
  );

  static TextStyle bold = GoogleFonts.googleSans(fontWeight: FontWeight.bold);

  static TextStyle semiBold = GoogleFonts.googleSans(
    fontWeight: FontWeight.w600,
  );
}
