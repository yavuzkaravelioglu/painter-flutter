// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/shared_widgets/page_text.dart';

class AboutUsLarge extends StatelessWidget {
  const AboutUsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageText(text: "ABOUT US LARGE"),
          PageText(text: "ABOUT US LARGE"),
          PageText(text: "ABOUT US LARGE"),
          PageText(text: "ABOUT US LARGE"),
        ],
      ),
    );
  }
}
