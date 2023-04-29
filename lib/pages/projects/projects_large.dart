// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/text_widgets/font_advent_text.dart';
import '../../widgets/text_widgets/font_orbitron_text.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';

class ProjectsLarge extends StatelessWidget {
  const ProjectsLarge({super.key});

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
                image: AssetImage("assets/photos/c-1.jpeg"),
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
                opacity: 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: screenSize.height * 0.05,
              horizontal: screenSize.width * 0.2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FontOrbitronText(
                  text: "The projects that\nwe proud of",
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
                Container(
                  child: Column(
                    children: [
                      ImageSlideShowWithTap(screenSize: screenSize),
                      /* SizedBox(
                        height: 200,
                      ),
                      ImageSlideShow(screenSize: screenSize), */
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageSlideShowWithTap extends StatefulWidget {
  const ImageSlideShowWithTap({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  State<ImageSlideShowWithTap> createState() => _ImageSlideShowWithTapState();
}

class _ImageSlideShowWithTapState extends State<ImageSlideShowWithTap> {
  final List<ImageProvider> _imageProviders = [
    Image.asset(
      'assets/photos/a-1.jpeg',
      fit: BoxFit.cover,
    ).image,
  ];

  late final _easyEmbeddedImageProvider = MultiImageProvider(_imageProviders);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: widget.screenSize.height * 0.5,
      indicatorColor: const Color.fromARGB(255, 114, 176, 227),
      indicatorBackgroundColor: Colors.white,
      autoPlayInterval: 6000,
      isLoop: true,
      children: [
        GestureDetector(
          child: Hero(
            tag: "a-1",
            child: Image.asset(
              'assets/photos/a-1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            showImageViewer(
                context, Image.asset('assets/photos/a-1.jpeg').image,
                swipeDismissible: true, doubleTapZoomable: true);
          },
        ),
        GestureDetector(
          child: Hero(
            tag: "b-1",
            child: Image.asset(
              'assets/photos/b-1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            showImageViewer(
                context, Image.asset('assets/photos/b-1.jpeg').image,
                swipeDismissible: true, doubleTapZoomable: true);
          },
        ),
        GestureDetector(
          child: Hero(
            tag: "c-1",
            child: Image.asset(
              'assets/photos/c-1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            showImageViewer(
                context, Image.asset('assets/photos/c-1.jpeg').image,
                swipeDismissible: true, doubleTapZoomable: true);
          },
        ),
      ],
    );
  }
}

class ImageSlideShow extends StatelessWidget {
  const ImageSlideShow({
    super.key,
    required this.screenSize,
  });
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: screenSize.height * 0.5,
      indicatorColor: const Color.fromARGB(255, 114, 176, 227),
      indicatorBackgroundColor: Colors.white,
      autoPlayInterval: 5000,
      isLoop: true,
      children: [
        Image.asset(
          'assets/photos/a-1.jpeg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/photos/b-1.jpeg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/photos/c-1.jpeg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
