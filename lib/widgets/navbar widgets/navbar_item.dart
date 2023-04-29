import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paint_burak/pages/contact_us/contact_us.dart';

import '../../controllers/active_navbar_item_controller.dart';
import '../../pages/about_us/about_us.dart';
import '../animated_widgets/state_exercise.dart';

class NavbarItem extends StatefulWidget {
  final String navbarItemName;
  final String menuType;

  const NavbarItem({
    super.key,
    required this.navbarItemName,
    required this.menuType,
  });

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHover = false;
  bool isActive = true;
  late String menuItemText;
  late FontWeight _fontWeight;

  Color _itemColor = Colors.white;

  @override
  void initState() {
    (widget.menuType == 'side-navbar')
        ? menuItemText = addSpace(widget.navbarItemName)
        : menuItemText = widget.navbarItemName;
  }

  @override
  Widget build(BuildContext context) {
    ActiveNavbarItemController c = Get.find();

    return InkWell(
      onTap: () {
        context.goNamed(widget.navbarItemName);
        c.updateActiveItemName(widget.navbarItemName);
      },
      onHover: (value) {
        setState(() {
          value ? isHover = true : isHover = false;
          (isHover == true && widget.navbarItemName != c.activeItemName.value)
              ? _itemColor = Colors.black
              : _itemColor = Colors.white;
        });
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Obx(
        () => Text(
          menuItemText,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 12,
              letterSpacing: 2,
              color: _itemColor,
              fontWeight: (c.activeItemName.value == widget.navbarItemName)
                  ? _fontWeight = FontWeight.bold
                  : _fontWeight = FontWeight.normal,
            ),
          ),
        ),
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

// montserrat