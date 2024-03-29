// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paint_burak/routing/app_routing.dart';

import 'pages/about_us/about_us.dart';
import 'pages/contact_us/contact_us.dart';
import 'pages/home/home.dart';
import 'routing/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Painter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blueGrey,
      ),
      initialRoute: HomePageRoute,
      //getPages: AppRouting.routes,
      getPages: [
        GetPage(name: HomePageRoute, page: () => Home()),
        GetPage(name: AboutUsPageRoute, page: () => AboutUs()),
        GetPage(name: ContactUsPageRoute, page: () => ContactUs()),
      ],
      //home: Home(),
    );
  }
}
