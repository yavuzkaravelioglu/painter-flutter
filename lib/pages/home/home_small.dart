// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/animated_widgets/heart.dart';
import '../../widgets/navbar widgets/bottom_navigation_bar_custom.dart';
import '../../widgets/shared_widgets/make_appointment.dart';
import '../../widgets/text_widgets/font_advent_text.dart';

class HomeSmall extends StatelessWidget {
  const HomeSmall({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: screenSize.height * 1,
            width: screenSize.width * 1,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/photos/1.jpg"),
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
                opacity: 0.6,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.08,
          ),
          SizedBox(
            width: screenSize.width * 1,
            child: MakeAppointment(
              screenSize: screenSize,
              height: screenSize.height * 0.4,
              fontSize1: 25,
              fontSize2: 15,
            ),
          ),
          BottomNavigationBarCustom(
            screenSize: screenSize,
            width: screenSize.width * 1,
            height: screenSize.height * 0.45,
            fontSize: 12,
            bottomLogoPadding: 30,
            containerPadding: 40,
            textPadding: 2,
            logoSize: 25,
          ),
        ],
      ),
    );
  }
}
