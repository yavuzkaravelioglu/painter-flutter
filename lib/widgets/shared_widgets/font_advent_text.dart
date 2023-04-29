// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontAdventText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final double? letterSpacing;
  final textAlign;

  const FontAdventText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.letterSpacing,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      child: Text(
        "$text",
        textAlign: textAlign,
        /*style: TextStyle(
          fontFamily: 
        ),*/
        //style: GoogleFonts.getFont("$font"),
        style: GoogleFonts.adventPro(
          textStyle: TextStyle(
            color: color,
            fontSize: size,
            letterSpacing: letterSpacing,
          ),
        ),
      ),
    );
  }
}
