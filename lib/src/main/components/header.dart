import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/core/designer/aton/flutter_logo.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/main/controllers/menu_controller.dart';

import 'social_menu.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuAppController _controller = Get.put(MenuAppController());

  Header({super.key});

  @override
  Widget build(BuildContext context) {
    var desktop = context.isDesktop();
    return Container(
      width: double.infinity,
      height: 80,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Stack(children: [
          Container(
            padding: EdgeInsets.only(
                left: desktop ? kDefaultPadding : 0,
                top: kDefaultPadding,
                right: kDefaultPadding),
            child: Row(
              children: [
                if (!desktop)
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _controller.openOrCloseDrawer();
                    },
                  ),
                SizedBox(
                    width: desktop ? 100 : 30,
                    height: desktop ? 40 : 30,
                    child: const FlutterLogoAdaptive()),
                const Spacer(),
                const SocialMenu(),
              ],
            ),
          ),
          if (desktop) WebMenu(),
        ]),
      ),
    );
  }
}
