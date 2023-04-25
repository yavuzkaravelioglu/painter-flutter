// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:paint_burak/widgets/animated_widgets/heart.dart';

import '../../widgets/navbar widgets/custom_drawer.dart';
import '../../widgets/navbar widgets/side_navigation_bar.dart';
import '../../widgets/navbar widgets/top_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: TopNavigationBar(context, scaffoldKey),
      drawer: CustomDrawer(),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Heart(),
              PageText(),
              PageText(),
              PageText(),
              PageText(),
            ],
          ),
        ),
      ),
    );
  }
}

class PageText extends StatelessWidget {
  const PageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      child: Text("HOME"),
    );
  }
}
