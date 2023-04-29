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
  late Color _itemColor;
  late Color _color1;
  late Color _color2;

  @override
  void initState() {
    (widget.menuType == 'side-navbar')
        ? menuItemText = addSpace(widget.navbarItemName)
        : menuItemText = widget.navbarItemName;
    (widget.menuType == 'side-navbar')
        ? {
            _color1 = Colors.black,
            _itemColor = Colors.black,
            _color2 = Colors.grey,
          }
        : {
            _color1 = Colors.white,
            _itemColor = Colors.white,
            _color2 = Colors.black,
          };
  }

  @override
  Widget build(BuildContext context) {
    ActiveNavbarItemController c = Get.find();
    var screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        context.goNamed(widget.navbarItemName);
        c.updateActiveItemName(widget.navbarItemName);
      },
      onHover: (value) {
        setState(() {
          value ? isHover = true : isHover = false;
          (isHover == true && widget.navbarItemName != c.activeItemName.value)
              ? _itemColor = _color2
              : _itemColor = _color1;
        });
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Obx(
        () => FittedBox(
          fit: BoxFit.cover,
          child: Text(
            menuItemText,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                //fontSize: screenSize.width * 0.01,
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