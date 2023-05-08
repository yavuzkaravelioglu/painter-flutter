// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../text_widgets/font_orbitron_text.dart';

class ThreeDimension extends StatelessWidget {
  const ThreeDimension({
    super.key,
    required this.screenSize,
    required this.fontSize,
    required this.height,
  });

  final Size screenSize;
  final double fontSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: FontOrbitronText(
                text: "The highest\nquality and\nservice",
                fontSize: fontSize,
                color: Colors.black,
                letterSpacing: 1.5,
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: VerticalDivider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: FontOrbitronText(
                text: "Quick response\nwithin 24 hours to your request",
                fontSize: fontSize, //
                color: Colors.black,
                letterSpacing: 1.5,
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: VerticalDivider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: FontOrbitronText(
                text: "Long-term\nwarranty on any work carried out",
                fontSize: fontSize,
                color: Colors.black,
                letterSpacing: 1.5,
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
