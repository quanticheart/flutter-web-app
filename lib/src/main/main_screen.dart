import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/main/controllers/menu_controller.dart';
import 'package:web_app/src/home/home_screen.dart';
import 'package:web_app/src/main/components/more_message.dart';

import 'components/header.dart';
import 'components/session_message.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuAppController _controller = Get.put(MenuAppController());

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            const MoreMessage(),
            const SessionMessage(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: const SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
