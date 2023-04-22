// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../helpers/responsive.dart';
import '../../routing/app_routing.dart';
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
          )
        : LogoContainer(),
    title: Responsive.isSmallScreen(context) ? LogoContainer() : Container(),
    actions: !(Responsive.isSmallScreen(context))
        ? [
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: AppRouting.menuItems
                      .map((e) => NavbarItem(
                            navbarItemName: e.pageName,
                            navbarItemRoute: e.routeName,
                          ))
                      .toList(),
                )
              ],
            )
          ]
        : <Widget>[],
    backgroundColor: Colors.white,
  );
}

Container LogoContainer() {
  return Container(
    padding: EdgeInsets.only(left: 14),
    child: Image.asset(
      "assets/logos/paint_logo.png",
      width: 40,
    ),
  );
}
