// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/button_widgets/transparent_button.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';
import 'package:paint_burak/widgets/text_widgets/font_orbitron_text.dart';

class MakeAppointment extends StatelessWidget {
  const MakeAppointment(
      {super.key,
      required this.screenSize,
      required this.height,
      required this.fontSize1,
      required this.fontSize2});

  final Size screenSize;
  final double height;
  final double fontSize1;
  final double fontSize2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 93, 179, 192),
      child: Center(
        child: SizedBox(
          width: screenSize.width * 0.80,
          height: height, // 0.6
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenSize.width * 1,
                child: FontOrbitronText(
                  text: "Do you want to make an\nappointment for a\nquotation?",
                  fontSize: fontSize1, // 40
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              FontMontserratText(
                text: "We will gladly take the time to help you.",
                fontSize: fontSize2, // 20
                color: Colors.black,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TransparentButton(
                height: 40,
                width: 180,
                paddingValues: EdgeInsets.fromLTRB(10, 0, 10, 0),
                text: "REQUEST A QUOTE",
                size: 12,
                color: Colors.white,
                letterSpacing: 2,
                routeName: "CONTACT",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
