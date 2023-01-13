import 'package:flutter/cupertino.dart';

extension ScreenExt on BuildContext {
  bool isMobile() => MediaQuery.of(this).size.width < 650;

  bool isTablet() =>
      MediaQuery.of(this).size.width < 900 &&
      MediaQuery.of(this).size.width >= 650;

  bool isDesktop() => MediaQuery.of(this).size.width >= 900;
}
