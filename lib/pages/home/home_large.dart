// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/widgets/button_widgets/transparent_button.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';

import '../../controllers/active_navbar_item_controller.dart';
import '../../controllers/navbar_scroll_animation_controller.dart';
import '../../widgets/animated_widgets/heart.dart';
import '../../widgets/text_widgets/font_advent_text.dart';

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
                  mainButton(screenSize),
                ],
              ),
            ),
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

  Positioned mainButton(Size screenSize) {
    return Positioned(
      top: screenSize.height * 0.65,
      child: TransparentButton(
        height: 50,
        paddingValues: EdgeInsets.fromLTRB(20, 0, 20, 0),
        text: "SEE ALL PROJECTS",
        size: 13,
        color: Colors.white,
        letterSpacing: 3,
        routeName: "PROJECTS",
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
