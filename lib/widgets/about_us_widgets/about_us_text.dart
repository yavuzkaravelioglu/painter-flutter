import 'package:flutter/material.dart';

import '../text_widgets/font_montserrat_text.dart';

class AboutUsText extends StatelessWidget {
  const AboutUsText({
    super.key,
    required this.text1,
    required this.text2,
    required this.fontSize1,
    required this.fontSize2,
    required this.padding,
  });

  final String text1;
  final String text2;
  final double fontSize1;
  final double fontSize2;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: padding, //30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: FontMontserratText(
              text: text1,
              fontSize: fontSize1, // 23,
              color: Colors.black,
              containerAlign: Alignment.topLeft,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 3,
            child: FontMontserratText(
              text: text2,
              fontSize: fontSize2, // 15,
              color: Colors.grey,
              containerAlign: Alignment.topLeft,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
