import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/theme_ext.dart';

class FlutterLogoAdaptive extends StatelessWidget {
  const FlutterLogoAdaptive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var darkMode = isDarkMode();
    var desktop = context.isDesktop();
    var logo = "assets/icons";

    if (desktop) {
      logo = darkMode ? "$logo/logo-full-white.svg" : "$logo/logo-full.svg";
    } else {
      logo = "$logo/logo.svg";
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: (desktop ? 100 : 25),
          minHeight: (desktop ? 35 : 25),
          maxHeight: 45,
          maxWidth: 100),
      child: SvgPicture.asset(logo, fit: BoxFit.scaleDown),
    );
  }
}
