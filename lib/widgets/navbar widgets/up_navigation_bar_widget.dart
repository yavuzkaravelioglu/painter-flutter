import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../constants/logos.dart';
import '../../controllers/active_navbar_item_controller.dart';
import '../../helpers/responsive.dart';
import '../../routing/app_routes.dart';
import '../../routing/app_routing.dart';
import '../button_widgets/transparent_button.dart';
import 'navbar_item.dart';

class UpNavigationBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const UpNavigationBar({super.key, required this.scaffoldKey});

  @override
  State<UpNavigationBar> createState() => _UpNavigationBarState();
}

class _UpNavigationBarState extends State<UpNavigationBar> {
  String menuType = 'top-navbar';
  final ActiveNavbarItemController c = Get.find();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return AppBar(
      toolbarHeight: screenSize.height * 0.15,
      elevation: 0.0,
      backgroundColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
      //backgroundColor: Color.fromARGB(255, 255, 255, 255),
      leading: (Responsive.isSmallScreen(context))
          ? IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            )
          : Container(),
      /*Row(
            children: [
              SizedBox(
                width: screenSize.width * 0.04,
              ),
              LogoContainer(context),
            ],
          ),*/
      leadingWidth: (Responsive.isSmallScreen(context)) ? 56 : 0,
      title: Responsive.isSmallScreen(context)
          ? LogoText(context, c, 40, 200, Colors.white)

          //LogoContainer(context, c, key)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NavbarItem(
                        navbarItemName: AppRouting.menuItems[1].pageName,
                        menuType: menuType,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      NavbarItem(
                        navbarItemName: AppRouting.menuItems[2].pageName,
                        menuType: menuType,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      NavbarItem(
                        navbarItemName: AppRouting.menuItems[3].pageName,
                        menuType: menuType,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.025,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: LogoText(context, c, 45, 300, Colors.white),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenSize.width * 0.025,
                      ),
                      NavbarItem(
                        navbarItemName: AppRouting.menuItems[4].pageName,
                        menuType: menuType,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TransparentButton(40, EdgeInsets.fromLTRB(10, 0, 10, 0),
                          "REQUEST A QUOTE", 12, Colors.white, 2),
                    ],
                  ),
                ),
              ],
            ),
      actions: <Widget>[],
      /*!(Responsive.isSmallScreen(context))
        ? [
            SizedBox(
              width: screenSize.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: AppRouting.menuItems
                    .map(
                      (e) => Row(
                        children: [
                          NavbarItem(
                            navbarItemName: e.pageName,
                            menuType: menuType,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            //StateExercise(),
          ]
        : <Widget>[],
    //backgroundColor: Colors.grey[300],*/
    );
  }

  Container LogoContainer(BuildContext context, ActiveNavbarItemController c,
      GlobalKey<ScaffoldState> key) {
    return Container(
      //padding: EdgeInsets.only(left: 10),
      child: IconButton(
        icon: Image.asset(Logo),
        iconSize: 60,
        onPressed: () {
          context.goNamed(HomePageName);
          c.updateActiveItemName(HomePageName);
        },
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }

  Container LogoText(BuildContext context, ActiveNavbarItemController c,
      double fontSize, double height, Color color) {
    return Container(
      //padding: EdgeInsets.only(left: 10),
      child: InkWell(
        child: FittedBox(
          fit: BoxFit.cover,
          child: logoText(
            fontSize,
            height,
            color,
          ),
        ),
        onTap: () {
          print("Logo Pressed");
          context.goNamed(HomePageName);
          c.updateActiveItemName(HomePageName);
        },
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }

/*Text(
        "P A I N T Y",
        //"S T R U C T",
        style: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),*/
}