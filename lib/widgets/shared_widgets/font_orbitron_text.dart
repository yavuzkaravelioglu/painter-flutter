// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontOrbitronText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double? containerHeight;
  final Color color;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final textAlign;
  final containerAlign;

  const FontOrbitronText({
    super.key,
    required this.text,
    required this.fontSize,
    this.containerHeight,
    required this.color,
    this.letterSpacing,
    this.fontWeight,
    this.textAlign,
    this.containerAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlign,
      height: containerHeight,
      child: Text(
        "$text",
        textAlign: textAlign,
        /*style: TextStyle(
          fontFamily: 
        ),*/
        //style: GoogleFonts.getFont("$font"),
        style: GoogleFonts.orbitron(
          textStyle: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
          ),
        ),
      ),
    );
  }
}
