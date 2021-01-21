import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBlackColor,
    textTheme: GoogleFonts.montserratTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}



AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kWhiteColor,
    elevation: 0,
    iconTheme: IconThemeData(color: kWhiteColor),
  );
}
