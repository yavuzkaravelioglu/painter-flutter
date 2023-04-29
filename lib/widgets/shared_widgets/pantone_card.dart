import 'package:flutter/material.dart';

import '../text_widgets/font_orbitron_text.dart';

class PantoneCard extends StatelessWidget {
  final String textHead;
  String textBody;
  final Color color;
  final double screenWidth;
  final double fontSize;

  PantoneCard({
    super.key,
    required this.textHead,
    required this.textBody,
    required this.color,
    required this.screenWidth,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.6,
          color: Colors.black,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(1),
        ),
      ),
      //Border.all(color: Colors.blacks)
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: Container(
              height: 180,
              width: 250,
              //padding: EdgeInsets.all(3),
              color: color,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: FontOrbitronText(
              text: textHead,
              fontSize: (fontSize == 0) ? screenWidth * 0.011 : fontSize,
              color: Colors.black,
              letterSpacing: 2,
              containerAlign: Alignment.topLeft,
              textAlign: TextAlign.left,
            ),
          ),
          /* Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              height: 1,
              color: Colors.black,
            ),
          ), */
          const SizedBox(
            height: 5,
          ),
          (textBody != "")
              ? FontOrbitronText(
                  text: textBody,
                  fontSize: (fontSize == 0) ? screenWidth * 0.008 : fontSize,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                )
              : Container(),
        ],
      ),
    );
  }
}
