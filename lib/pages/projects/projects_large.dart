// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/text_widgets/font_advent_text.dart';

class ProjectsLarge extends StatelessWidget {
  const ProjectsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: screenSize.height * 0.6,
            width: screenSize.width * 1,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/photos/c-1.jpeg"),
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
                opacity: 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
