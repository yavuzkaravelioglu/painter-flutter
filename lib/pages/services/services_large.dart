// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/shared_widgets/font_orbitron_text.dart';

import '../../widgets/button_widgets/transparent_button.dart';
import '../../widgets/shared_widgets/font_advent_text.dart';

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
              horizontal: screenSize.width * 0.2,
            ),
            child: Column(
              children: [
                FontOrbitronText(
                  text: "The services that we\noffer",
                  fontSize: 40,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                FontOrbitronText(
                  text: "Painting",
                  fontSize: 27,
                  color: Colors.black,
                  letterSpacing: 2,
                  containerAlign: Alignment.topLeft,
                  textAlign: TextAlign.left,
                ),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                  crossAxisCount: 4,
                  children: <Widget>[
                    paintingServicesContainer('Sound of screams but the'),
                    paintingServicesContainer('Heed not the rabble'),
                    paintingServicesContainer('Hed have you all at the'),
                    paintingServicesContainer('Heed not the rabble'),
                    paintingServicesContainer('Sound of screams but the'),
                    paintingServicesContainer('Heed not the rabble'),
                  ],
                ),
              ],
            ),
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

  Container paintingServicesContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.6,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(1),
        ),
      ),
      //Border.all(color: Colors.blacks)
      padding: EdgeInsets.all(8),
      child: Text("$text"),
    );
  }
}
