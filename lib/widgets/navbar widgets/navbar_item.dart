import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/active_navbar_item_controller.dart';
import '../../controllers/navbar_scroll_animation_controller.dart';

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

  final NavbarScrollAnimationController navbarScrollAnimationController =
      Get.find();
  late AnimationController navbarAnimationController;

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
            //_color1 = Colors.white,
            //_itemColor = Colors.white,
            //_color2 = Colors.black,
            _color1 = Colors.white, //white - black
            _itemColor = Colors.white, //white - black
            _color2 = Colors.black, //black - white
          };
  }

  @override
  Widget build(BuildContext context) {
    ActiveNavbarItemController c = Get.find();
    var screenSize = MediaQuery.of(context).size;

    final NavbarScrollAnimationController navbarScrollAnimationController =
        Get.find();
    AnimationController navbarAnimationController =
        navbarScrollAnimationController.getAnimationController();
    Animation textColorAnimation =
        navbarScrollAnimationController.getTextColorAnimation();

    return AnimatedBuilder(
      animation: navbarScrollAnimationController,
      builder: (BuildContext context, _) {
        return InkWell(
          onTap: () {
            context.goNamed(widget.navbarItemName);
            c.updateActiveItemName(widget.navbarItemName);
            navbarAnimationController.reverse();
          },
          onHover: (value) {
            setState(() {
              value ? isHover = true : isHover = false;
              (isHover == true &&
                      widget.navbarItemName != c.activeItemName.value)
                  ? _color2 //getHoverColorAnimation.value //_color2
                  : _color1; //getTextColorAnimation.value; //_color1;
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
                    color: _itemColor, //_itemColor, //textColorAnimation.value;
                    fontWeight:
                        (c.activeItemName.value == widget.navbarItemName)
                            ? _fontWeight = FontWeight.bold
                            : _fontWeight = FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        );
      },
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