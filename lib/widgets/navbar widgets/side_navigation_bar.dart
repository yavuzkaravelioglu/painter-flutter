// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paint_burak/routing/app_routing.dart';
import 'package:paint_burak/widgets/navbar%20widgets/navbar_item.dart';

import '../../constants/logos.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    String menuType = 'side-navbar';

    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        SizedBox(
          height: screenHeight * 0.09,
        ),
        Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Logo),
            ),
            shape: BoxShape.circle,
          ),
        ),
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
}
