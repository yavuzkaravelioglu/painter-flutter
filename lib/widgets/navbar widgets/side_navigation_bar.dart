// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paint_burak/routing/app_routing.dart';
import 'package:paint_burak/widgets/navbar%20widgets/navbar_item.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        SizedBox(
          height: screenHeight * 0.15,
        ),
        Column(
          children: AppRouting.menuItems
              .map(
                (e) => Column(
                  children: [
                    NavbarItem(
                      navbarItemName: e.pageName,
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
