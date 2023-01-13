import 'package:flutter/material.dart';
import 'package:web_app/core/themes/theme_dark.dart';
import 'package:web_app/core/themes/theme_light.dart';

abstract class ApplicationTheme {
  ThemeData? theme;
}

enum ThemeEnum { DARK, LIGHT }

// extension ThemeContextExtension on BuildContext {
//   ThemeData get theme => watch<ThemeManager>().currentTheme;
// }
//
// class ThemeManager extends ChangeNotifier implements IThemeManager {
//   static ThemeManager? _instance;
//   static ThemeManager get instance {
//     _instance ??= ThemeManager._init();
//     return _instance!;
//   }
//
//   ThemeManager._init();
//
//   @override
//   ThemeData currentTheme = ThemeEnum.LIGHT.generateTheme;
//   ThemeEnum currentThemeEnum = ThemeEnum.LIGHT;
//
//   @override
//   void changeTheme(ThemeEnum newTheme) {
//     if (newTheme != currentThemeEnum) {
//       currentTheme = newTheme.generateTheme;
//       currentThemeEnum = newTheme;
//       notifyListeners();
//     }
//     return;
//   }
// }

extension ThemeEnumExtension on ThemeEnum {
  ThemeData get generateTheme {
    switch (this) {
      case ThemeEnum.LIGHT:
        return ThemeLight.instance.theme!;
      case ThemeEnum.DARK:
        return ThemeDark.instance.theme!;
      default:
        return ThemeLight.instance.theme!;
    }
  }
}