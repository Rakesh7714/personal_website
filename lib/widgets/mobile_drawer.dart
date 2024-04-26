import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class MobileDrawer extends StatelessWidget {
  final Function(int) onNavItemTap;
  const MobileDrawer({super.key,required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close)),
              ),
            ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                onTap: (){
                  onNavItemTap(i);
                },
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(navIcons[i]),
                title: Text(navTitles[i]),
              )
          ],
        ),
      );
  }
}