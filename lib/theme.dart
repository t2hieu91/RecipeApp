import 'package:flutter/material.dart';
import './constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: kOutlineColor),
    gapPadding: kDefaultPadding,
  );

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: kDefaultPadding,
    ),
    enabledBorder: outlineInputBorder,
    border: outlineInputBorder,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: kPrimaryColor),
      gapPadding: kDefaultPadding,
    ),
    hintStyle: TextStyle(
      color: kSecondaryTextColor,
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      fontSize: 17,
      color: kSecondaryTextColor,
    ),
  );
}
