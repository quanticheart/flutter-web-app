import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/core/designer/aton/button_purple.dart';
import 'package:web_app/core/designer/aton/flutter_full_logo.dart';
import 'package:web_app/core/themes/theme_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/main/controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  final MenuAppController _controller = Get.put(MenuAppController());

  SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.background,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const FlutterLogoFull(),
                      ButtonPurple(title: "Go!", callback: () {}),
                    ],
                  ),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
        ),
      ),
    );
  }
}
