// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paint_burak/helpers/responsive.dart';
import 'package:paint_burak/widgets/navbar%20widgets/up_navigation_bar_widget.dart';

import '../../controllers/navbar_scroll_animation_controller.dart';
import '../../widgets/navbar widgets/custom_drawer.dart';
import '../../widgets/navbar widgets/top_navigation_bar.dart';
import 'projects_large.dart';
import 'projects_small.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    var screenSize = MediaQuery.of(context).size;

    final NavbarScrollAnimationController navbarScrollAnimationController =
        Get.find();
    AnimationController navbarAnimationController =
        navbarScrollAnimationController.getAnimationController();

    return Scaffold(
      key: scaffoldKey,
      //appBar: TopNavigationBar(context, scaffoldKey),
      appBar: PreferredSize(
        preferredSize: screenSize * 0.15,
        //child: UpNavigationBar(scaffoldKey: scaffoldKey)),
        child: UpNavigationBar(scaffoldKey: scaffoldKey),
      ),
      extendBodyBehindAppBar: true,
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
          largeScreen: ProjectsLarge(),
          mediumScreen: ProjectsLarge(),
          smallScreen: ProjectsSmall(),
        ),
      ),
    );
  }
}
