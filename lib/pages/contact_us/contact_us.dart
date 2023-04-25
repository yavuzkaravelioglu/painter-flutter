// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/animated_widgets/state_exercise.dart';

import '../../widgets/navbar widgets/side_navigation_bar.dart';
import '../../widgets/navbar widgets/top_navigation_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: TopNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideNavigationBar(),
      ),
      body: SingleChildScrollView(
        child: Column(children: const [
          Text("CONTACT US"),
          //StateExercise(),
        ]),
      ),
    );
  }
}
