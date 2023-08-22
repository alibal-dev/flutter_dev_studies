// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_field

import 'package:flutter/material.dart';

class LighTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

/*   LighTheme() {
    theme = ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              alignment: Alignment.center),
        ),
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
                onPrimary: Colors.purple, onSecondary: _lightColor.blueMenia)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all(Colors.green),
            side: const BorderSide(color: Colors.green)),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 25, color: _lightColor._textColor)));
  } */
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMenia = Color.fromARGB(95, 3, 4, 1);
}
