// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:paint_burak/routing/app_routes.dart';

import '../../constants/logos.dart';
import '../../controllers/active_navbar_item_controller.dart';
import '../../helpers/responsive.dart';
import '../../routing/app_routing.dart';
import '../animated_widgets/state_exercise.dart';
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
  double screenWidth = MediaQuery.of(context).size.width;
  String menuType = 'top-navbar';
  final ActiveNavbarItemController c = Get.find();

  return AppBar(
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
        : Row(
            children: [
              SizedBox(
                width: screenWidth * 0.04,
              ),
              LogoContainer(context),
            ],
          ),
    leadingWidth: screenWidth * 0.15,
    title: Responsive.isSmallScreen(context)
        ? LogoContainer(context)
        : Container(),
    actions: !(Responsive.isSmallScreen(context))
        ? [
            SizedBox(
              width: screenWidth * 0.4,
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
                            width: screenWidth * 0.02,
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
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    //backgroundColor: Colors.grey[300],
  );
}

Container LogoContainer(BuildContext context) {
  return Container(
    //padding: EdgeInsets.only(left: 10),
    child: IconButton(
      icon: Image.asset(Logo),
      iconSize: 60,
      onPressed: () {
        context.goNamed(HomePageName);
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    ),
  );
}
