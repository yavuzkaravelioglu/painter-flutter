import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paint_burak/pages/contact_us/contact_us.dart';

import '../../pages/about_us/about_us.dart';
import '../animated_widgets/state_exercise.dart';

class NavbarItem extends StatefulWidget {
  final String navbarItemName;
  final String menuType;

  const NavbarItem(
      {super.key, required this.navbarItemName, required this.menuType});

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHover = false;
  bool isActive = true;
  late String menuItemText;

  Color _hoverItemColor = Colors.black;
  FontWeight _fontWeight = FontWeight.normal;

  @override
  void initState() {
    (widget.menuType == 'side-navbar')
        ? menuItemText = addSpace(widget.navbarItemName)
        : menuItemText = widget.navbarItemName;
  }

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
              ? _hoverItemColor = Color.fromARGB(255, 193, 136, 191)
              : _hoverItemColor = Colors.black;
        });
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Text(
        menuItemText,
        style: TextStyle(color: _hoverItemColor, fontWeight: _fontWeight),
      ),
    );
  }
}

String addSpace(String menuItemText) {
  String menuItemTextRevised = '';
  menuItemText.runes.forEach((int rune) {
    menuItemTextRevised = menuItemTextRevised + String.fromCharCode(rune) + ' ';
  });
  return menuItemTextRevised;
}
