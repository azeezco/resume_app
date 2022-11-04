import 'package:flutter/material.dart';

class Styles {
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFE5E5E5);
  static Color orangeColor = const Color(0xFFF37B67);

  static TextStyle regularTextStyle = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle semiBoldTextStyle = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
