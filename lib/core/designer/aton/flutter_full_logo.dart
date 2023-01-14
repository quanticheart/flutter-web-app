import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/theme_ext.dart';

class FlutterLogoFull extends StatelessWidget {
  const FlutterLogoFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var darkMode = isDarkMode();
    var logo = "assets/icons";

    logo = darkMode ? "$logo/logo-full-white.svg" : "$logo/logo-full.svg";

    return ConstrainedBox(
      constraints: const BoxConstraints(
          minWidth: (100), minHeight: (35), maxHeight: 45, maxWidth: 100),
      child: SvgPicture.asset(logo, fit: BoxFit.scaleDown),
    );
  }
}
