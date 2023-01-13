import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

extension ThemeExt on BuildContext {
  Color get background => Theme.of(this).colorScheme.background;

  bool isDarkMode() {
    var brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}

bool isDarkMode() {
  var brightness = SchedulerBinding.instance.window.platformBrightness;
  return brightness == Brightness.dark;
}

extension ColorsExt on ThemeData {
  Color get background => colorScheme.background;
}
