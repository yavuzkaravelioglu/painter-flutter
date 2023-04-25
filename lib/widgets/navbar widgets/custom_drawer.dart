// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'side_navigation_bar.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SideNavigationBar(),
      //backgroundColor: Colors.grey[300],
      backgroundColor: Colors.white,
    );
  }
}
