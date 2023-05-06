// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';

class FirmInfo extends StatelessWidget {
  FirmInfo({super.key, required this.screenSize, required this.fontSize});

  Size screenSize;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FirmInfoText("020 - 78 56 770", this.fontSize),
        FirmInfoText("contact@painty.us", this.fontSize),
        SizedBox(
          height: screenSize.height * 0.02,
        ),
        FirmInfoText("Wijnands Schilderwerken B.V.", this.fontSize),
        SizedBox(
          height: screenSize.height * 0.02,
        ),
        FirmInfoText("KvK 77738403", this.fontSize),
        FirmInfoText("BTW NL8611.18.169.B01", this.fontSize),
      ],
    );
  }
}

Padding FirmInfoText(String header, double fontSize) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: FontMontserratText(
      text: header,
      fontSize: fontSize,
      color: Colors.black,
      letterSpacing: 1,
      containerAlign: Alignment.topLeft,
      textAlign: TextAlign.left,
    ),
  );
}

/*

020 - 78 56 770
contact@wijnandsschilderwerken.nl

Wijnands Schilderwerken B.V.

KvK 77738403
BTW NL8611.18.169.B01

*/
