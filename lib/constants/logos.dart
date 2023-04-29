// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import '../widgets/text_widgets/font_orbitron_text.dart';

String rollLogo = "assets/logos/rulo.png";
String roofLogo = "assets/logos/paint_logo.png";
String Logo = roofLogo;

FontOrbitronText logoText(double FontSize, double height, Color color) {
  return FontOrbitronText(
    text: "P A I N T Y",
    fontSize: FontSize,
    containerHeight: height,
    color: color,
    containerAlign: Alignment.center,
    textAlign: TextAlign.center,
  );
}
