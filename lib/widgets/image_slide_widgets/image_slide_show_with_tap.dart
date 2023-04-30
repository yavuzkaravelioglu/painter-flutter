import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../helpers/image_tag_duo.dart';

class ImageSlideShowWithTap extends StatefulWidget {
  const ImageSlideShowWithTap({
    super.key,
    required this.screenSize,
    required this.imageList,
  });

  final Size screenSize;
  final List<ImageTagDuo> imageList;

  @override
  State<ImageSlideShowWithTap> createState() => _ImageSlideShowWithTapState();
}

class _ImageSlideShowWithTapState extends State<ImageSlideShowWithTap> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ImageSlideshow(
        height: widget.screenSize.height * 0.5,
        indicatorColor: const Color.fromARGB(255, 114, 176, 227),
        indicatorBackgroundColor: Colors.white,
        autoPlayInterval: 6000,
        isLoop: true,
        children: [
          GestureDetector(
            child: Hero(
              tag: widget.imageList[0].imageTag,
              child: Image.asset(
                widget.imageList[0].imagePath,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              showImageViewer(
                  context, Image.asset(widget.imageList[0].imagePath).image,
                  swipeDismissible: true, doubleTapZoomable: true);
            },
          ),
          GestureDetector(
            child: Hero(
              tag: widget.imageList[1].imageTag,
              child: Image.asset(
                widget.imageList[1].imagePath,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              showImageViewer(
                  context, Image.asset(widget.imageList[1].imagePath).image,
                  swipeDismissible: true, doubleTapZoomable: true);
            },
          ),
          GestureDetector(
            child: Hero(
              tag: widget.imageList[2].imageTag,
              child: Image.asset(
                widget.imageList[2].imagePath,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              showImageViewer(
                  context, Image.asset(widget.imageList[2].imagePath).image,
                  swipeDismissible: true, doubleTapZoomable: true);
            },
          ),
        ],
      ),
    );
  }
}
