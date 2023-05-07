// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/text_widgets/font_orbitron_text.dart';

import '../../widgets/navbar widgets/bottom_navigation_bar_custom.dart';
import '../../widgets/shared_widgets/make_appointment.dart';
import '../../widgets/shared_widgets/pantone_card.dart';

class ServicesLarge extends StatelessWidget {
  const ServicesLarge({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: screenSize.height * 0.6,
            width: screenSize.width * 1,
            decoration: BoxWithImage("assets/photos/a-1.jpeg", null, null, 0.4),
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
                  fontSize: 43,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                  size: 42.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                FontOrbitronText(
                  text: "Painting",
                  fontSize: 30,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: EdgeInsets.symmetric(vertical: 40),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: <Widget>[
                    PantoneCard(
                      textHead: 'Maintenance contract\nfor paintwork',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 0,
                      //textBody: 'Hed have you all at the',
                      color: Color.fromARGB(255, 194, 191, 181),
                    ),
                    PantoneCard(
                      textHead: 'Exterior painting\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 0,
                      //textBody: 'Heed not the rabble',
                      color: Color.fromARGB(255, 175, 164, 206),
                    ),
                    PantoneCard(
                      textHead: 'Interior painting\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 0,
                      //textBody: 'Sound of screams but the',
                      color: Color.fromARGB(255, 238, 165, 197),
                    ),
                    PantoneCard(
                      textHead: 'Owners association\npainter',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 0,
                      //textBody: 'Sound of screams but the',
                      color: Color.fromARGB(255, 245, 223, 77),
                    ),
                    PantoneCard(
                      textHead: 'Winter painters\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 0,
                      //textBody: 'Heed not the rabble',
                      color: Color.fromARGB(255, 163, 204, 201),
                    ),
                    PantoneCard(
                      textHead: 'Powder coating\n',
                      textBody: "",
                      screenWidth: screenSize.width,
                      fontSize: 0,
                      //textBody: 'Heed not the rabble',
                      color: Color.fromARGB(255, 140, 172, 211),
                    ),
                  ],
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

  BoxDecoration BoxWithImage(
      String imagePath, Widget? child, BoxBorder? border, double opacity) {
    return BoxDecoration(
      border: border,
      image: DecorationImage(
        image: AssetImage(imagePath),
        colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
        opacity: opacity,
        fit: BoxFit.cover,
      ),
    );
  }
}
