// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paint_burak/helpers/responsive.dart';
import 'package:paint_burak/widgets/animated_widgets/heart.dart';
import 'package:paint_burak/widgets/navbar%20widgets/silver_top_navigation_bar_widget.dart';
import 'package:paint_burak/widgets/navbar%20widgets/up_navigation_bar_widget.dart';

import '../../controllers/navbar_scroll_animation_controller.dart';
import '../../widgets/navbar widgets/custom_drawer.dart';
import '../../widgets/navbar widgets/side_navigation_bar.dart';
import '../../widgets/navbar widgets/top_navigation_bar.dart';
import 'home_large.dart';
import 'home_small.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    var screenSize = MediaQuery.of(context).size;

    final NavbarScrollAnimationController navbarScrollAnimationController =
        Get.find();
    AnimationController navbarAnimationController =
        navbarScrollAnimationController.getAnimationController();
    Animation textColorAnimation =
        navbarScrollAnimationController.getTextColorAnimation();

    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      //appBar: TopNavigationBar(context, scaffoldKey),
      appBar: PreferredSize(
        preferredSize: screenSize * 0.15,
        //child: UpNavigationBar(scaffoldKey: scaffoldKey)),
        child: UpNavigationBar(scaffoldKey: scaffoldKey),
      ),
      drawer: CustomDrawer(),
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (ScrollEndNotification scroll) {
          var metrics = scroll.metrics;

          if (!metrics.atEdge || metrics.pixels != 0) {
            //animasyonu trigerlar
            navbarAnimationController.forward();
          } else {
            navbarAnimationController.reverse();
          }
          return true;
        },
        child: Responsive(
          largeScreen: HomeLarge(),
          mediumScreen: HomeLarge(),
          smallScreen: HomeSmall(),
        ),
      ),
      /*NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          print('Selam');
          return true;
        },
        child: Responsive(
          largeScreen: HomeLarge(),
          mediumScreen: HomeLarge(),
          smallScreen: HomeSmall(),
        ),
      ),*/
    );
  }
}
