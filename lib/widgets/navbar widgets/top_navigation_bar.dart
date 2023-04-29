// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paint_burak/routing/app_routes.dart';
import 'package:paint_burak/widgets/shared_widgets/font_montserrat_text.dart';
import 'package:paint_burak/widgets/shared_widgets/font_orbitron_text.dart';
import 'package:paint_burak/widgets/shared_widgets/font_advent_text.dart';

import '../../constants/logos.dart';
import '../../controllers/active_navbar_item_controller.dart';
import '../../helpers/responsive.dart';
import '../../routing/app_routing.dart';
import '../animated_widgets/state_exercise.dart';
import '../button_widgets/transparent_button.dart';
import 'navbar_item.dart';

// AppBar döndüren bi fonksiyon olucak, context ve scaffoldkey parametre olarak alınacak
// leading propu ekran boyutuna göre belirlenecek
//  - small ise menu iconu; IconButton'a basıldıgında drawer açılacak
//  - small üstü ise şirket logosu
// title propu small screen ise logo ve center olucak. large da title yok
// actions propu large ise ListView widget'ı olucak,
//  ListView childrenı Row olucak, Rowun childrenı için map sistemi kurulacak.
//  routes.dart ta tanımlı ekranlar map yapılacak. her bir itemname navbarItem ın constructırına yollanacak

AppBar TopNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  var screenSize = MediaQuery.of(context).size;
  String menuType = 'top-navbar';
  final ActiveNavbarItemController c = Get.find();

  return AppBar(
    toolbarHeight: screenSize.height * 0.15,
    elevation: 0.0,
    backgroundColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
    //backgroundColor: Color.fromARGB(255, 255, 255, 255),
    leading: (Responsive.isSmallScreen(context))
        ? IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              key.currentState?.openDrawer();
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
    leadingWidth: 0,
    //leadingWidth: screenSize.width * 0.01,
    title: Responsive.isSmallScreen(context)
        ? LogoContainer(context, c)
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
                child: LogoText(context, c),
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
                      navbarItemName: AppRouting.menuItems[5].pageName,
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

Container LogoContainer(BuildContext context, ActiveNavbarItemController c) {
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

Container LogoText(BuildContext context, ActiveNavbarItemController c) {
  return Container(
    //padding: EdgeInsets.only(left: 10),
    child: TextButton(
      child: FontOrbitronText(
        text: "P A I N T Y",
        fontSize: 26,
        containerHeight: 300,
        color: Colors.white,
        containerAlign: Alignment.center,
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        context.goNamed(HomePageName);
        c.updateActiveItemName(HomePageName);
      },
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
