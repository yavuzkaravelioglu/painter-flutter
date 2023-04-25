import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/pages/contact_us/contact_us.dart';

import '../../pages/about_us/about_us.dart';
import '../animated_widgets/state_exercise.dart';

class NavbarItem extends StatefulWidget {
  final String navbarItemName;

  const NavbarItem({super.key, required this.navbarItemName});

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHover = false;
  bool isActive = true;
  Color _hoverItemColor = Colors.black;
  FontWeight _fontWeight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          //isActive = false;
        });
        context.goNamed(widget.navbarItemName);
      },
      onHover: (value) {
        setState(() {
          value ? isHover = true : isHover = false;
          isHover
              ? _hoverItemColor = Colors.yellow
              : _hoverItemColor = Colors.black;
        });
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Text(
        widget.navbarItemName,
        style: TextStyle(color: _hoverItemColor, fontWeight: _fontWeight),
      ),
    );
  }
}
