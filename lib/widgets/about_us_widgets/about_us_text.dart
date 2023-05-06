import 'package:flutter/material.dart';

import '../text_widgets/font_montserrat_text.dart';

class AboutUsText extends StatelessWidget {
  const AboutUsText({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: FontMontserratText(
              text: text1,
              fontSize: 23,
              color: Colors.black,
              containerAlign: Alignment.topLeft,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 3,
            child: FontMontserratText(
              text: text2,
              fontSize: 15,
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
