import 'package:flutter/material.dart';
import 'package:paint_burak/routing/app_routing.dart';
import 'package:paint_burak/widgets/navbar%20widgets/navbar_item.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Column(
          children: AppRouting.menuItems
              .map((e) => NavbarItem(
                    navbarItemName: e.pageName,
                    navbarItemRoute: e.routeName,
                  ))
              .toList(),
        )
      ],
    );
  }
}
