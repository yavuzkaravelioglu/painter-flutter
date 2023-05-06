// ignore_for_file: prefer_const_constructors

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarScrollAnimationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    duration: Duration(
      milliseconds: 250,
    ),
    vsync: this,
  );

  late Animation backgroundColorAnimation = ColorTween(
    begin: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
    end: Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
  ).animate(animationController);

  late Animation textColorAnimation = ColorTween(
    begin: Colors.white,
    end: Colors.black,
  ).animate(animationController);

  late Animation navberHeightAnimation = Tween<double>(
    begin: 0.15,
    end: 0.10,
  ).animate(animationController);

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: Duration(
        milliseconds: 250,
      ),
      vsync: this,
    );

    backgroundColorAnimation = ColorTween(
      begin: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
      end: Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
    ).animate(animationController);

    textColorAnimation = ColorTween(
      begin: Colors.white,
      end: Colors.black,
    ).animate(animationController);

    navberHeightAnimation = Tween<double>(
      begin: 0.15,
      end: 0.10,
    ).animate(animationController);

    //animasyonu trigerlar, onPressed handler içine koy

    animationController.addListener(() {
      //print(animationController.value);
      //print(backgroundColorAnimation.value);
    });

    // add status listener. to reverse the animation we need to know the status of animation;
    // complete oldumu, olduysa reverselenebilir olsun gibi..
    animationController.addStatusListener((status) {});
  }

  AnimationController getAnimationController() {
    return this.animationController;
  }

  Animation getBackgroundColorAnimation() {
    return this.backgroundColorAnimation;
  }

  Animation getNavbarHeightAnimation() {
    return this.navberHeightAnimation;
  }

  Animation getTextColorAnimation() {
    return this.textColorAnimation;
  }
}
