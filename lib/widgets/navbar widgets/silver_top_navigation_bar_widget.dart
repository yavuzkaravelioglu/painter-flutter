// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/routing/app_routes.dart';

import '../../constants/logos.dart';
import '../../controllers/active_navbar_item_controller.dart';
import '../../helpers/responsive.dart';
import '../../routing/app_routing.dart';
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

SliverAppBar SilverTopNavigationBar(
    BuildContext context, GlobalKey<ScaffoldState> key) {
  var screenSize = MediaQuery.of(context).size;
  String menuType = 'top-navbar';
  final ActiveNavbarItemController c = Get.find();

  return SliverAppBar(
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
                    TransparentButton(
                      height: 40,
                      paddingValues: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      text: "REQUEST A QUOTE",
                      size: 12,
                      color: Colors.white,
                      letterSpacing: 2,
                      routeName: "CONTACT",
                    ),
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
