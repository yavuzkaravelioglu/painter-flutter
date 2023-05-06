import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../controllers/active_navbar_item_controller.dart';
import '../../controllers/navbar_scroll_animation_controller.dart';
import '../text_widgets/font_montserrat_text.dart';

class TransparentButton extends StatefulWidget {
  const TransparentButton({
    super.key,
    required this.height,
    required this.paddingValues,
    required this.text,
    required this.size,
    required this.color,
    required this.letterSpacing,
    required this.routeName,
  });

  final double height;
  final EdgeInsets paddingValues;
  final String text;
  final double size;
  final Color color;
  final double letterSpacing;
  final String routeName;

  @override
  State<TransparentButton> createState() => _TransparentButtonState();
}

class _TransparentButtonState extends State<TransparentButton> {
  @override
  Widget build(BuildContext context) {
    ActiveNavbarItemController c = Get.find();
    final NavbarScrollAnimationController navbarScrollAnimationController =
        Get.find();
    AnimationController navbarAnimationController =
        navbarScrollAnimationController.getAnimationController();
    Animation textColorAnimation =
        navbarScrollAnimationController.getTextColorAnimation();

    return Container(
      height: widget.height,
      //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Colors.white,
      )),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              context.goNamed(widget.routeName);
              c.updateActiveItemName(widget.routeName);
              navbarAnimationController.reverse();
            },
            onHover: (value) {},
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Padding(
              padding: widget.paddingValues,
              child: FontMontserratText(
                text: widget.text,
                fontSize: widget.size,
                color: widget.color,
                letterSpacing: widget.letterSpacing,
                containerAlign: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
