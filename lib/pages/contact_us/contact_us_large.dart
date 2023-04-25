// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/shared_widgets/page_text.dart';

class ContactUsLarge extends StatelessWidget {
  const ContactUsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageText(text: "CONTACT US LARGE"),
          PageText(text: "CONTACT US LARGE"),
          PageText(text: "CONTACT US LARGE"),
          PageText(text: "CONTACT US LARGE"),
          //StateExercise(),
        ],
      ),
    );
  }
}
