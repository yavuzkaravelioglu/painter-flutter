// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/widgets/button_widgets/transparent_button.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';

import '../../constants/about_us_texts.dart';
import '../../constants/home_texts.dart';
import '../../controllers/active_navbar_item_controller.dart';
import '../../controllers/navbar_scroll_animation_controller.dart';
import '../../widgets/about_us_widgets/about_us_photo.dart';
import '../../widgets/about_us_widgets/customer_review_card.dart';
import '../../widgets/animated_widgets/heart.dart';
import '../../widgets/home_page_widgets/photo_box.dart';
import '../../widgets/home_page_widgets/service_card.dart';
import '../../widgets/home_page_widgets/three_dimension.dart';
import '../../widgets/navbar widgets/bottom_navigation_bar_custom.dart';
import '../../widgets/shared_widgets/make_appointment.dart';
import '../../widgets/text_widgets/font_advent_text.dart';
import '../../widgets/text_widgets/font_orbitron_text.dart';

class HomeLarge extends StatelessWidget {
  const HomeLarge({super.key});

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
            height: screenSize.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.3,
            ),
            child: SizedBox(
              height: screenSize.height * 0.3,
              child: FontAdventText(
                text: enteranceText,
                fontSize: 30,
                color: Color.fromARGB(255, 48, 96, 102),
                containerAlign: Alignment.center,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.01,
          ),
          SizedBox(
            height: screenSize.height * 0.35,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.1,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ServiceCard(
                      cardHeight: screenSize.height * 0.2,
                      cardWidth: screenSize.width * 0.25,
                      headerText: serviceHeader1,
                      fontHeader: 25,
                      explanationText: serviceExplanation1,
                      fontExplanation: 15,
                      screenSize: screenSize,
                      cardPadding: screenSize.height * 0.05,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: ServiceCard(
                      cardHeight: screenSize.height * 0.2,
                      cardWidth: screenSize.width * 0.25,
                      headerText: serviceHeader2,
                      fontHeader: 25,
                      explanationText: serviceExplanation2,
                      fontExplanation: 15,
                      screenSize: screenSize,
                      cardPadding: screenSize.height * 0.05,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: ServiceCard(
                      cardHeight: screenSize.height * 0.2,
                      cardWidth: screenSize.width * 0.25,
                      headerText: serviceHeader3,
                      fontHeader: 25,
                      explanationText: serviceExplanation3,
                      fontExplanation: 15,
                      screenSize: screenSize,
                      cardPadding: screenSize.height * 0.05,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                  ),
                ],
              ),
            ),
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
            height: screenSize.height * 0.05,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: screenSize.height * 0.05,
              horizontal: screenSize.width * 0.1,
            ),
            child: Column(
              children: [
                FontOrbitronText(
                  text: "Customer experiences",
                  fontSize: 43,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
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
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          SizedBox(
            height: screenSize.height * 0.5,
            child: Row(
              children: [
                PhotoBox(photoPath: "assets/photos/home-1.jpeg"),
                PhotoBox(photoPath: "assets/photos/home-2.jpeg"),
                PhotoBox(photoPath: "assets/photos/home-3.jpeg"),
                PhotoBox(photoPath: "assets/photos/home-4.jpeg"),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.08,
          ),
          ThreeDimension(
            screenSize: screenSize,
            height: screenSize.height * 0.15,
            fontSize: screenSize.width * 0.017,
          ),
          SizedBox(
            height: screenSize.height * 0.1,
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

  Positioned mainText(Size screenSize) {
    return Positioned(
      top: screenSize.height * 0.45,
      //right: screenSize.width * 0.1,
      child: FontAdventText(
        text: "The painter of \nRochester",
        fontSize: 45,
        color: Colors.white,
        letterSpacing: 10,
        textAlign: TextAlign.center,
      ),
    );
  }

  Positioned mainButton(
      Size screenSize, String buttonText, String routeName, Color color) {
    return Positioned(
      top: screenSize.height * 0.65,
      child: TransparentButton(
        height: 50,
        paddingValues: EdgeInsets.fromLTRB(20, 0, 20, 0),
        text: buttonText, //"SEE ALL PROJECTS",
        size: 13,
        color: color, //Colors.white,
        letterSpacing: 3,
        routeName: routeName, //"PROJECTS",
      ),
    );
  }
}





/*
Container(
        height: 50,
        //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.white,
        )),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {},
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: FontMontserratText(
                  text: "SEE ALL PROJECTS",
                  size: 13,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
            ),
          ],
        ),
      ),
*/
