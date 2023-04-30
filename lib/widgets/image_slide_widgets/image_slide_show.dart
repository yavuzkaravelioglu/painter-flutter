import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
