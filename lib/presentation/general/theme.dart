import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6A11CB);
const kAccentColor = Color(0xFF2575FC);
const kTextColor = Color(0xFF000F46);
const kDisabledColor = Color(0x80000F46);
const kErrorColor = Color(0xFFF65E49);
const kBackgroundColor = Color(0xFFF3F4F6);

const titleStyle = TextStyle(
  color: kTextColor,
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const descriptionStyle = TextStyle(
  color: kTextColor,
  fontSize: 20.0,
  fontWeight: FontWeight.normal,
);

const kTextTheme = TextTheme(
  headline1: TextStyle(
    color: kTextColor,
  ),
  headline2: TextStyle(
    color: kTextColor,
  ),
  headline3: TextStyle(
    color: kTextColor,
  ),
  headline4: TextStyle(
    color: kTextColor,
  ),
  headline5: TextStyle(
    color: kTextColor,
  ),
  headline6: TextStyle(
    color: kTextColor,
  ),
  subtitle1: TextStyle(
    color: kTextColor,
  ),
  subtitle2: TextStyle(
    color: kTextColor,
  ),
  bodyText1: TextStyle(
    color: kTextColor,
  ),
  bodyText2: TextStyle(
    color: kTextColor,
  ),
  caption: TextStyle(
    color: kDisabledColor,
  ),
);

final kTextButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  ),
);

final kBottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: const Color(0xFF000F46),
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white.withOpacity(.8),
);

const kAppBarTheme = AppBarTheme(
  elevation: 0,
  color: kAccentColor,
  iconTheme: IconThemeData(
    color: Color(0xFFCBCED1),
  ),
  actionsIconTheme: IconThemeData(
    color: Color(0xFF000F46),
  ),
);

final kTheme = ThemeData(
  primaryColor: kPrimaryColor,
  disabledColor: kDisabledColor,
  errorColor: kErrorColor,
  canvasColor: Colors.white,
  backgroundColor: kBackgroundColor,
  textTheme: kTextTheme,
  bottomNavigationBarTheme: kBottomNavigationBarTheme,
  textButtonTheme: kTextButtonTheme,
  appBarTheme: kAppBarTheme,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
);
