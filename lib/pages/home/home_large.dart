// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/animated_widgets/heart.dart';
import '../../widgets/shared_widgets/page_text.dart';

class HomeLarge extends StatelessWidget {
  const HomeLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Heart(),
          PageText(text: "HOME LARGE"),
          PageText(text: "HOME LARGE"),
          PageText(text: "HOME LARGE"),
          PageText(text: "HOME LARGE"),
        ],
      ),
    );
  }
}
