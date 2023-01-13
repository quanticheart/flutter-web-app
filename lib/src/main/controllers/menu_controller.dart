import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MenuAppController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  List<String> get menuItems =>
      ["Flutter", "Android", "Ios", "Laravel", "Html", "Contact"];

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
