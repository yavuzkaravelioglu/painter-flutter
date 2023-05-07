// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/navbar widgets/bottom_navigation_bar_custom.dart';
import '../../widgets/shared_widgets/make_appointment.dart';
import '../../widgets/shared_widgets/pantone_card.dart';
import '../../widgets/text_widgets/font_orbitron_text.dart';

class ServicesSmall extends StatelessWidget {
  const ServicesSmall({super.key});

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
                image: AssetImage("assets/photos/a-1.jpeg"),
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
                  text: "The services that\nwe offer",
                  fontSize: 23,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: screenSize.height * 0.06,
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                  size: 22.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(
                  height: screenSize.height * 0.06,
                ),
                FontOrbitronText(
                  text: "Painting",
                  fontSize: 20,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: EdgeInsets.symmetric(vertical: 40),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: <Widget>[
                    PantoneCard(
                      textHead: 'Maintenance contract\nfor paintwork',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 15,
                      //textBody: 'Hed have you all at the',
                      color: Color.fromARGB(255, 194, 191, 181),
                    ),
                    PantoneCard(
                      textHead: 'Exterior painting\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 15,
                      //textBody: 'Heed not the rabble',
                      color: Color.fromARGB(255, 175, 164, 206),
                    ),
                    PantoneCard(
                      textHead: 'Interior painting\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 15,
                      //textBody: 'Sound of screams but the',
                      color: Color.fromARGB(255, 238, 165, 197),
                    ),
                    PantoneCard(
                      textHead: 'Owners association\npainter',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 15,
                      //textBody: 'Sound of screams but the',
                      color: Color.fromARGB(255, 245, 223, 77),
                    ),
                    PantoneCard(
                      textHead: 'Winter painters\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 15,
                      //textBody: 'Heed not the rabble',
                      color: Color.fromARGB(255, 163, 204, 201),
                    ),
                    PantoneCard(
                      textHead: 'Powder coating\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 15,
                      //textBody: 'Heed not the rabble',
                      color: Color.fromARGB(255, 140, 172, 211),
                    ),
                  ],
                )
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
