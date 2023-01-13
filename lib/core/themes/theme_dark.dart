import 'package:flutter/material.dart';
import 'package:web_app/core/themes/application_theme.dart';
import 'package:web_app/core/themes/themes_default.dart';

class ThemeDark extends ApplicationTheme {
  static ThemeDark? _instance;

  static ThemeDark get instance {
    _instance ??= ThemeDark._init();
    return _instance!;
  }

  ThemeDark._init();

  @override
  ThemeData? get theme => ThemeData(
        primaryColor: const Color(0xff212121),
        primaryColorLight: const Color(0xff9e9e9e),
        primaryColorDark: const Color(0xff000000),
        canvasColor: const Color(0xff303030),
        scaffoldBackgroundColor: const Color(0xff303030),
        cardColor: const Color(0xff424242),
        dividerColor: const Color(0x1fffffff),
        highlightColor: const Color(0x40cccccc),
        splashColor: const Color(0x40cccccc),
        unselectedWidgetColor: const Color(0xb3ffffff),
        disabledColor: const Color(0x62ffffff),
        secondaryHeaderColor: const Color(0xff616161),
        dialogBackgroundColor: const Color(0xff424242),
        indicatorColor: const Color(0xff64ffda),
        hintColor: const Color(0x80ffffff),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.normal,
          minWidth: 88,
          height: 36,
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xb3ffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          displayMedium: TextStyle(
            color: Color(0xb3ffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          displaySmall: TextStyle(
            color: Color(0xb3ffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineMedium: TextStyle(
            color: Color(0xb3ffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headlineSmall: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleLarge: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleMedium: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyLarge: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyMedium: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodySmall: TextStyle(
            color: Color(0xb3ffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelLarge: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          titleSmall: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelSmall: TextStyle(
            color: Color(0xffffffff),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return const Color(0xff64ffda);
            }
            return null;
          }),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return const Color(0xff64ffda);
            }
            return null;
          }),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return const Color(0xff64ffda);
            }
            return null;
          }),
          trackColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return const Color(0xff64ffda);
            }
            return null;
          }),
        ),
        bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xff424242)),
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: const MaterialColor(4280361249, {
          50: Color(0xfff2f2f2),
          100: Color(0xffe6e6e6),
          200: Color(0xffcccccc),
          300: Color(0xffb3b3b3),
          400: Color(0xff999999),
          500: Color(0xff808080),
          600: Color(0xff666666),
          700: Color(0xff4d4d4d),
          800: Color(0xff333333),
          900: Color(0xff191919)
        }))
            .copyWith(background: const Color(0xff616161))
            .copyWith(error: const Color(0xffd32f2f)),
      );
}
