import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paint_burak/pages/contact_us/contact_us.dart';

import '../../pages/about_us/about_us.dart';

class NavbarItem extends StatelessWidget {
  final String navbarItemName;
  final String navbarItemRoute;

  const NavbarItem(
      {super.key, required this.navbarItemName, required this.navbarItemRoute});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(navbarItemRoute);
      },
      onHover: (value) {},
      child: Container(
        child: Text(
          navbarItemName,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
