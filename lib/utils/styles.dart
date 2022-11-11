import 'package:flutter/material.dart';

class Styles{
  // primary color
  static Color primaryColor = const Color(0xFF6750A4);
  static Color onPrimaryColor = const Color(0xFFFFFFFF);
  static Color primaryContainerColor = const Color(0xFFEADDFF);
  static Color onPrimaryContainerColor = const Color(0xFF21005D);

  // secondary color
  static Color secondaryColor = const Color(0xFF625B71);
  static Color onSecondaryColor = const Color(0xFFFFFFFF);
  static Color secondaryContainerColor = const Color(0xFFE8DEF8);
  static Color onSecondaryContainerColor = const Color(0xFF1D192B);

  // tertiary color
  static Color tertiaryColor = const Color(0xFF7D5260);
  static Color onTertiaryColor = const Color(0xFFFFFFFF);
  static Color tertiaryContainerColor = const Color(0xFFFFD8E4);
  static Color onTertiaryContainerColor = const Color(0xFF31111D);

  // error color
  static Color errorColor = const Color(0xFFB3261E);
  static Color onErrorColor = const Color(0xFFFFFFFF);
  static Color errorContainerColor = const Color(0xFFF9DEDC);
  static Color onErrorContainerColor = const Color(0xFF410E0B);

  // background color
  static Color backgroundColor = const Color(0xFFFFFBFE);
  static Color onBackgroundColor = const Color(0xFF1C1B1F);

  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      color: primaryColor,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500
  );
  static TextStyle headlineStyle1 = TextStyle(
      fontSize: 24,
      color: primaryColor,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold
  );
  static TextStyle headlineStyle2 = TextStyle(
      fontSize: 20,
      color: primaryColor,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600
  );
  static TextStyle headlineStyle3 = TextStyle(
      fontSize: 18,
      color: primaryColor,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600
  );
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 16,
      color: primaryColor,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500
  );

  static TextStyle ticketLabel = const TextStyle(
      fontSize: 8,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500
  );

  static TextStyle smallerTicketLabel = const TextStyle(
      fontSize: 6,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500
  );

}
