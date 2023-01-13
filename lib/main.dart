import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:web_app/core/themes/theme_dark.dart';
import 'package:web_app/core/themes/theme_light.dart';
import 'package:web_app/src/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeLight.instance.theme,
      darkTheme: ThemeDark.instance.theme,
      themeMode: ThemeMode.light,
      home: MainScreen(),
    );
  }
}
