// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paint_burak/pages/contact_us/contact_us_large.dart';
import 'package:paint_burak/pages/contact_us/contact_us_small.dart';
import 'package:paint_burak/widgets/animated_widgets/state_exercise.dart';

import '../../helpers/responsive.dart';
import '../../widgets/navbar widgets/custom_drawer.dart';
import '../../widgets/navbar widgets/side_navigation_bar.dart';
import '../../widgets/navbar widgets/top_navigation_bar.dart';
import '../../widgets/navbar widgets/up_navigation_bar_widget.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      //appBar: TopNavigationBar(context, scaffoldKey),
      appBar: PreferredSize(
          preferredSize: screenSize * 0.15,
          child: UpNavigationBar(scaffoldKey: scaffoldKey)),
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
          largeScreen: ContactUsLarge(),
          mediumScreen: ContactUsLarge(),
          smallScreen: ContactUsSmall(),
        ),
      ),
    );
  }
}
