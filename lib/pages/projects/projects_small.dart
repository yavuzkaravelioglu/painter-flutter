// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../helpers/image_tag_duo.dart';
import '../../widgets/image_slide_widgets/image_slide_show_with_tap.dart';
import '../../widgets/navbar widgets/bottom_navigation_bar_custom.dart';
import '../../widgets/shared_widgets/make_appointment.dart';
import '../../widgets/text_widgets/font_orbitron_text.dart';

class ProjectsSmall extends StatelessWidget {
  const ProjectsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    List<ImageTagDuo> imageList1 = [
      ImageTagDuo(imagePath: "assets/photos/a-1.jpeg", imageTag: "a-1"),
      ImageTagDuo(imagePath: "assets/photos/b-1.jpeg", imageTag: "b-1"),
      ImageTagDuo(imagePath: "assets/photos/c-1.jpeg", imageTag: "c-1"),
    ];

    List<ImageTagDuo> imageList2 = [
      ImageTagDuo(imagePath: "assets/photos/a-1.jpeg", imageTag: "a-2"),
      ImageTagDuo(imagePath: "assets/photos/b-1.jpeg", imageTag: "b-2"),
      ImageTagDuo(imagePath: "assets/photos/c-1.jpeg", imageTag: "c-2"),
    ];

    return ListView(
      padding: EdgeInsets.only(top: 0),
      children: [
        Column(
          children: [
            Container(
              height: screenSize.height * 0.6,
              width: screenSize.width * 1,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/photos/d-1.jpeg"),
                  colorFilter:
                      ColorFilter.mode(Colors.black, BlendMode.dstATop),
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
                    text: "The projects that\nwe proud of",
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
                  Container(
                    child: Column(
                      children: [
                        FontOrbitronText(
                          text: "Houseboat\nKeizersgracht",
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 4,
                          containerAlign: Alignment.topLeft,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        ImageSlideShowWithTap(
                          sliderHeight: screenSize.height * 0.6,
                          imageList: imageList1,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.1,
                        ),
                        FontOrbitronText(
                          text: "Okeghemstraat\ninterior painting",
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 4,
                          containerAlign: Alignment.topLeft,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        ImageSlideShowWithTap(
                          sliderHeight: screenSize.height * 0.6,
                          imageList: imageList2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
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
    );
  }
}
