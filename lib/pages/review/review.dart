// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paint_burak/helpers/responsive.dart';
import 'package:paint_burak/pages/about_us/about_us_small.dart';

import '../../widgets/navbar widgets/custom_drawer.dart';
import '../../widgets/navbar widgets/side_navigation_bar.dart';
import '../../widgets/navbar widgets/top_navigation_bar.dart';
import 'review_large.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: TopNavigationBar(context, scaffoldKey),
      extendBodyBehindAppBar: true,
      drawer: CustomDrawer(),
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (ScrollEndNotification scroll) {
          var metrics = scroll.metrics;
          if (metrics.atEdge) {
            print('top');
          }
          return true;
        },
        child: Responsive(
          largeScreen: ReviewLarge(),
          mediumScreen: ReviewLarge(),
          smallScreen: AboutUsSmall(),
        ),
      ),
    );
  }
}
