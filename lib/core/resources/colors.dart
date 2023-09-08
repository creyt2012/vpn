import 'package:flutter/material.dart';

///General Colors
const Color primaryColor = Color(0xff419aff);
const Color secondaryColor = Color(0xff5b17de);

const Color primaryShade = Color(0xff000000);
const Color secondaryShade = Color(0xff5b17de);

LinearGradient primaryGradient = const LinearGradient(
  colors: [primaryColor, primaryShade],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient greyGradient = LinearGradient(
  colors: [Colors.grey.withOpacity(.8), Colors.grey.withOpacity(.5)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient secondaryGradient = const LinearGradient(
  colors: [secondaryColor, secondaryShade],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient primarySecondaryGradient = const LinearGradient(
  colors: [primaryColor, primaryShade, secondaryShade, secondaryColor],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

///Light Theme
const Color backgroundLight = Colors.white;
const Color surfaceLight = Colors.white;

///Dark theme
const Color backgroundDark = Color(0xff212121);
const Color surfaceDark = Color(0xff0234b4);

Color get shadowColor => Colors.black.withOpacity(.05);
