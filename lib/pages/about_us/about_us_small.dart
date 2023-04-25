// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/shared_widgets/page_text.dart';

class AboutUsSmall extends StatelessWidget {
  const AboutUsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageText(text: "ABOUT US SMALL"),
          PageText(text: "ABOUT US SMALL"),
          PageText(text: "ABOUT US SMALL"),
          PageText(text: "ABOUT US SMALL"),
        ],
      ),
    );
  }
}
