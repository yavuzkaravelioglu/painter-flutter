// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/text_widgets/font_advent_text.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';
import 'package:paint_burak/widgets/text_widgets/font_orbitron_text.dart';

import '../../constants/about_us_texts.dart';

class CustomerReviewCard extends StatelessWidget {
  const CustomerReviewCard({
    super.key,
    required this.screenSize,
    required this.customerExperience,
  });

  final Size screenSize;
  final CustomerExperience customerExperience;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color.fromARGB(151, 158, 158, 158),
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ),
        child: SizedBox(
          width: screenSize.width / 3,
          height: screenSize.height * 0.5,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FontAdventText(
                  text: customerExperience.score,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(146, 0, 187, 212),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                FontOrbitronText(
                  text: customerExperience.header,
                  fontSize: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: FontMontserratText(
                    text: customerExperience.comment,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
