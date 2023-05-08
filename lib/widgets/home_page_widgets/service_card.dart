// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paint_burak/widgets/text_widgets/font_advent_text.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';
import 'package:paint_burak/widgets/text_widgets/font_orbitron_text.dart';

import '../../constants/about_us_texts.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.screenSize,
    required this.cardWidth,
    required this.cardHeight,
    required this.fontHeader,
    required this.fontExplanation,
    required this.headerText,
    required this.explanationText,
    required this.cardPadding,
    required this.mainAxisAlignment,
  });

  final Size screenSize;
  final String headerText;
  final String explanationText;
  final double cardWidth;
  final double cardHeight;
  final double fontHeader;
  final double fontExplanation;
  final double cardPadding;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color.fromARGB(151, 158, 158, 158),
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: cardPadding, // screenSize.height * 0.05,
          ),
          child: Column(
            mainAxisAlignment: mainAxisAlignment, //MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FontAdventText(
                text: headerText,
                fontSize: fontHeader,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              FontAdventText(
                text: explanationText,
                fontSize: fontExplanation, // screenSize.width * 0.02,
                color: Colors.black,
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
