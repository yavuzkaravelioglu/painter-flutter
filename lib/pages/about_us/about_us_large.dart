// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/navbar%20widgets/bottom_navigation_bar_custom.dart';
import 'package:paint_burak/widgets/shared_widgets/make_appointment.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';

import '../../constants/about_us_texts.dart';
import '../../widgets/about_us_widgets/about_us_photo.dart';
import '../../widgets/about_us_widgets/about_us_text.dart';
import '../../widgets/about_us_widgets/customer_review_card.dart';
import '../../widgets/about_us_widgets/work_order.dart';
import '../../widgets/text_widgets/font_advent_text.dart';
import '../../widgets/text_widgets/font_orbitron_text.dart';

class AboutUsLarge extends StatelessWidget {
  const AboutUsLarge({super.key});

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
                image: AssetImage("assets/photos/e-1.jpeg"),
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
                opacity: 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: screenSize.height * 0.05,
              horizontal: screenSize.width * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FontOrbitronText(
                  text: "About Us",
                  fontSize: 43,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                AboutUsPhoto(
                  imagePath: "assets/photos/about-us-1.jpeg",
                  bigImage: true,
                  imageHeight: screenSize.height * 0.3,
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                AboutUsText(
                  text1: au_leading1,
                  text2: au_exp_1,
                  fontSize1: 23,
                  fontSize2: 15,
                  padding: 30,
                ),
                AboutUsText(
                  text1: au_leading2,
                  text2: au_exp_2,
                  fontSize1: 23,
                  fontSize2: 15,
                  padding: 30,
                ),
                AboutUsPhoto(
                  imagePath: "assets/photos/about-us-2.jpeg",
                  bigImage: false,
                  imageHeight: screenSize.height * 0.5,
                ),
                AboutUsText(
                  text1: au_leading3,
                  text2: au_exp_3,
                  fontSize1: 23,
                  fontSize2: 15,
                  padding: 30,
                ),
                AboutUsText(
                  text1: au_leading4,
                  text2: au_exp_4,
                  fontSize1: 23,
                  fontSize2: 15,
                  padding: 30,
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                FontOrbitronText(
                  text: "Customer experiences",
                  fontSize: 35,
                  color: Colors.black,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: screenSize.height * 0.04,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomerReviewCard(
                        customerExperience: CustomerExperienceList[0],
                        screenSize: screenSize,
                        cardWidth: screenSize.width / 3,
                        cardHeight: screenSize.height * 0.5,
                        fontSize1: screenSize.width * 0.02,
                        fontSize2: screenSize.width * 0.012,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomerReviewCard(
                        customerExperience: CustomerExperienceList[1],
                        screenSize: screenSize,
                        cardWidth: screenSize.width / 3,
                        cardHeight: screenSize.height * 0.5,
                        fontSize1: screenSize.width * 0.02,
                        fontSize2: screenSize.width * 0.012,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomerReviewCard(
                        customerExperience: CustomerExperienceList[2],
                        screenSize: screenSize,
                        cardWidth: screenSize.width / 3,
                        cardHeight: screenSize.height * 0.5,
                        fontSize1: screenSize.width * 0.02,
                        fontSize2: screenSize.width * 0.012,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: FontOrbitronText(
                          text: "How does a job go?",
                          fontSize: 35,
                          color: Colors.black,
                          containerAlign: Alignment.topLeft,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: WorkOrder(),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.04,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.08,
          ),
          SizedBox(
            width: screenSize.width * 1,
            child: MakeAppointment(
              screenSize: screenSize,
              height: screenSize.height * 0.6,
              fontSize1: 40,
              fontSize2: 20,
            ),
          ),
          BottomNavigationBarCustom(
            screenSize: screenSize,
            width: screenSize.width * 1,
            height: screenSize.height * 0.6,
            fontSize: 20,
            bottomLogoPadding: 100,
            containerPadding: 100,
            textPadding: 7,
            logoSize: 45,
          ),
        ],
      ),
    );
  }

  // assets/photos/about-us-1.jpeg
  // "assets/photos/about-us-2.jpeg"
}
