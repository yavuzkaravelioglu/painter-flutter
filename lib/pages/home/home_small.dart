// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/home_page_widgets/photo_box.dart';

import '../../constants/about_us_texts.dart';
import '../../constants/home_texts.dart';
import '../../widgets/about_us_widgets/customer_review_card.dart';
import '../../widgets/animated_widgets/heart.dart';
import '../../widgets/button_widgets/transparent_button.dart';
import '../../widgets/home_page_widgets/service_card.dart';
import '../../widgets/home_page_widgets/three_dimension.dart';
import '../../widgets/navbar widgets/bottom_navigation_bar_custom.dart';
import '../../widgets/shared_widgets/make_appointment.dart';
import '../../widgets/text_widgets/font_advent_text.dart';
import '../../widgets/text_widgets/font_orbitron_text.dart';

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
            child: Container(
              height: screenSize.height * 0.3,
              width: screenSize.width * 0.5,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  mainText(screenSize),
                  mainButton(
                    screenSize,
                    "SEE ALL PROJECTS",
                    "PROJECTS",
                    Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.2,
            ),
            child: SizedBox(
              height: screenSize.height * 0.3,
              child: FontAdventText(
                text: enteranceText,
                fontSize: 20,
                color: Color.fromARGB(255, 48, 96, 102),
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          SizedBox(
            width: screenSize.width * 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  FontOrbitronText(
                    text: "Services",
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 2,
                    containerAlign: Alignment.center,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  ServiceCard(
                    cardHeight: screenSize.height * 0.1,
                    cardWidth: screenSize.width * 0.6,
                    headerText: serviceHeader1,
                    fontHeader: 20,
                    explanationText: "",
                    fontExplanation: 0,
                    screenSize: screenSize,
                    cardPadding: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: screenSize.width * 0.01,
                  ),
                  ServiceCard(
                    cardHeight: screenSize.height * 0.1,
                    cardWidth: screenSize.width * 0.6,
                    headerText: serviceHeader2,
                    fontHeader: 20,
                    explanationText: "",
                    fontExplanation: 0,
                    screenSize: screenSize,
                    cardPadding: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: screenSize.width * 0.01,
                  ),
                  ServiceCard(
                    cardHeight: screenSize.height * 0.1,
                    cardWidth: screenSize.width * 0.6,
                    headerText: serviceHeader3,
                    fontHeader: 20,
                    explanationText: "",
                    fontExplanation: 0,
                    screenSize: screenSize,
                    cardPadding: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.03,
          ),
          Center(
            child: TransparentButton(
              height: 50,
              width: 212,
              paddingValues: EdgeInsets.fromLTRB(20, 0, 20, 0),
              text: "SEE ALL SERVICES", //"SEE ALL PROJECTS",
              size: 13,
              color: Colors.black, //Colors.white,
              letterSpacing: 3,
              routeName: "SERVICES", //"PROJECTS",
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.1,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: screenSize.width * 0.05,
            ),
            child: Column(
              children: [
                FontOrbitronText(
                  text: "Customer Experiences",
                  fontSize: 20,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.center,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                CustomerReviewCard(
                  customerExperience: CustomerExperienceList[0],
                  screenSize: screenSize,
                  cardWidth: screenSize.width * 0.8,
                  cardHeight: screenSize.height * 0.35,
                  fontSize1: screenSize.height * 0.03,
                  fontSize2: screenSize.height * 0.018,
                ),
                CustomerReviewCard(
                  customerExperience: CustomerExperienceList[1],
                  screenSize: screenSize,
                  cardWidth: screenSize.width * 0.8,
                  cardHeight: screenSize.height * 0.35,
                  fontSize1: screenSize.height * 0.03,
                  fontSize2: screenSize.height * 0.018,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * 0.5,
                width: screenSize.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PhotoBox(photoPath: "assets/photos/home-1.jpeg"),
                    PhotoBox(photoPath: "assets/photos/home-2.jpeg"),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.5,
                width: screenSize.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PhotoBox(photoPath: "assets/photos/home-3.jpeg"),
                    PhotoBox(photoPath: "assets/photos/home-4.jpeg"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          ThreeDimension(
            screenSize: screenSize,
            height: screenSize.height * 0.11,
            fontSize: screenSize.width * 0.017,
          ),
          SizedBox(
            height: screenSize.height * 0.05,
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

  Positioned mainText(Size screenSize) {
    return Positioned(
      top: screenSize.height * 0.45,
      //right: screenSize.width * 0.1,
      child: FontAdventText(
        text: "The painter of \nRochester",
        fontSize: 35,
        color: Colors.white,
        letterSpacing: 8,
        textAlign: TextAlign.center,
      ),
    );
  }

  Positioned mainButton(
      Size screenSize, String buttonText, String routeName, Color color) {
    return Positioned(
      top: screenSize.height * 0.65,
      child: TransparentButton(
        height: 40,
        paddingValues: EdgeInsets.fromLTRB(20, 0, 20, 0),
        text: buttonText, //"SEE ALL PROJECTS",
        size: 11,
        color: color, //Colors.white,
        letterSpacing: 3,
        routeName: routeName, //"PROJECTS",
      ),
    );
  }
}
