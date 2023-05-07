// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/controllers/active_navbar_item_controller.dart';
import 'package:paint_burak/controllers/navbar_scroll_animation_controller.dart';
import 'package:paint_burak/widgets/navbar%20widgets/silver_top_navigation_bar_widget.dart';
import 'package:paint_burak/widgets/text_widgets/font_montserrat_text.dart';

import '../../constants/logos.dart';
import '../../routing/app_routes.dart';
import '../text_widgets/font_orbitron_text.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({
    super.key,
    required this.screenSize,
    required this.bottomLogoPadding,
    required this.containerPadding,
    required this.fontSize,
    required this.width,
    required this.height,
    required this.textPadding,
    required this.logoSize,
  });

  final Size screenSize;
  final double bottomLogoPadding;
  final double containerPadding;
  final double fontSize;
  final double width;
  final double height;
  final double textPadding;
  final double logoSize;

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    final ActiveNavbarItemController c = Get.find();
    final NavbarScrollAnimationController navbarScrollAnimationController =
        Get.find();
    AnimationController navbarAnimationController =
        navbarScrollAnimationController.getAnimationController();

    return Container(
      color: const Color.fromARGB(255, 20, 29, 30),
      child: SizedBox(
        width: widget.width, //widget.screenSize.width * 0.80,
        height: widget.height, //widget.screenSize.height * 0.6,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(
                    top: widget.containerPadding,
                    left: widget.containerPadding / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column1(
                      "Home",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column1(
                      "Projects",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column1(
                      "Services",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column1(
                      "About us",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column1(
                      "News",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column1(
                      "Contact",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(top: widget.containerPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column2(
                      "Warranty on paintwork",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column2(
                      "Terms and conditions",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column2(
                      "Privacy Policy",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column2(
                      "  ",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column2(
                      "contact@painty.us",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                    Column2(
                      "020 225 9319",
                      widget.fontSize,
                      widget.textPadding,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(top: widget.bottomLogoPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LogoText(context, navbarAnimationController, c,
                        widget.logoSize, 100, Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding Column1(String text, double fontSize, double textPadding) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: textPadding),
      child: FontMontserratText(
        text: text,
        fontSize: fontSize,
        letterSpacing: 1,
        color: Colors.white,
      ),
    );
  }

  Padding Column2(String text, double fontSize, double textPadding) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: textPadding),
      child: FontMontserratText(
        text: text,
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }

  Container LogoText(
      BuildContext context,
      AnimationController navbarAnimationController,
      ActiveNavbarItemController c,
      double fontSize,
      double height,
      Color color) {
    return Container(
      //padding: EdgeInsets.only(left: 10),
      child: InkWell(
        child: FittedBox(
          fit: BoxFit.cover,
          child: logoText(
            fontSize,
            height,
            color,
          ),
        ),
        onTap: () {
          context.goNamed(HomePageName);
          c.updateActiveItemName(HomePageName);
          navbarAnimationController.reverse();
        },
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }

  Container LogoContainer(BuildContext context, ActiveNavbarItemController c,
      GlobalKey<ScaffoldState> key) {
    return Container(
      //padding: EdgeInsets.only(left: 10),
      child: IconButton(
        icon: Image.asset(Logo),
        iconSize: 60,
        onPressed: () {
          context.goNamed(HomePageName);
          c.updateActiveItemName(HomePageName);
        },
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }
}
