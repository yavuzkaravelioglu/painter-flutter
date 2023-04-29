import 'package:flutter/material.dart';

import '../shared_widgets/font_montserrat_text.dart';

Container TransparentButton(double Height, EdgeInsets PaddingValues,
    String Text, double Size, Color Color, double LetterSpacing) {
  return Container(
    height: Height,
    //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    decoration: BoxDecoration(
        border: Border.all(
      width: 1,
      color: Colors.white,
    )),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          onHover: (value) {},
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Padding(
            padding: PaddingValues,
            child: FontMontserratText(
              text: Text,
              fontSize: Size,
              color: Color,
              letterSpacing: LetterSpacing,
              containerAlign: Alignment.center,
            ),
          ),
        ),
      ],
    ),
  );
}
