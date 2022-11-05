import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFE5E5E5);
  static Color orangeColor = const Color(0xFFF37B67);

  static bool checkOrientation(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      print(MediaQuery.of(context).orientation);
      return true;
    } else {
      print(MediaQuery.of(context).orientation);
      return false;
    }
  }

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: isDarkTheme ? Colors.white : Colors.black,

      backgroundColor: isDarkTheme ? Colors.black : Color(0xffF1F5FB),

      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),

      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),

      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),

      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      // textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: isDarkTheme ? Color(0xFF151515) : Color(0xFFE5E5E5),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }

  static TextStyle regularTextStyle = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle semiBoldTextStyle = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800);
  static TextStyle BoWCardTextStyle = const TextStyle(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500);
}
