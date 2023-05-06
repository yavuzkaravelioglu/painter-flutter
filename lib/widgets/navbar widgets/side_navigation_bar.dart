// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/routing/app_routing.dart';
import 'package:paint_burak/widgets/navbar%20widgets/navbar_item.dart';

import '../../constants/logos.dart';
import '../../controllers/active_navbar_item_controller.dart';
import '../../controllers/navbar_scroll_animation_controller.dart';
import '../../routing/app_routes.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    String menuType = 'side-navbar';

    ActiveNavbarItemController c = Get.find();
    final NavbarScrollAnimationController navbarScrollAnimationController =
        Get.find();
    AnimationController navbarAnimationController =
        navbarScrollAnimationController.getAnimationController();
    Animation backgroundColorAnimation =
        navbarScrollAnimationController.getBackgroundColorAnimation();

    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        SizedBox(
          height: screenHeight * 0.09,
        ),
        LogoText(context, navbarAnimationController, c),
        SizedBox(
          height: screenHeight * 0.07,
        ),
        Column(
          children: AppRouting.menuItems
              .map(
                (e) => Column(
                  children: [
                    NavbarItem(
                      navbarItemName: e.pageName,
                      menuType: menuType,
                    ),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  Container LogoText(
      BuildContext context,
      AnimationController navbarAnimationController,
      ActiveNavbarItemController c) {
    return Container(
      //padding: EdgeInsets.only(left: 10),
      child: InkWell(
        child: logoText(35, 100, Colors.black),
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
}
