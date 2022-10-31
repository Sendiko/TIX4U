import 'package:flutter/material.dart';

class Styles{
  static Color primaryColor = const Color(0xFFDBDFFD);
  static Color onPrimaryColor = const Color(0xFF242F9B);
  static Color backgroundColor = const Color(0x00ffffff);
  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      color: onPrimaryColor,
      fontWeight: FontWeight.w500
  );
  static TextStyle headlineStyle1 = TextStyle(
      fontSize: 24,
      color: onPrimaryColor,
      fontWeight: FontWeight.bold
  );
  static TextStyle headlineStyle2 = TextStyle(
      fontSize: 20,
      color: onPrimaryColor,
      fontWeight: FontWeight.bold
  );
  static TextStyle headlineStyle3 = TextStyle(
      fontSize: 18,
      color: onPrimaryColor,
      fontWeight: FontWeight.w500
  );
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 18,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500
  );
}
