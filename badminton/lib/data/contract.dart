import 'package:flutter/material.dart';


class BadColors {
  static final Color accent = Color(0xFFAF3132);
  static final Color main = Color(0xFF7CDE5A);
  static final Color dark = Color(0xFF257D06);
  static final Color back = Color(0xFFE5E5E5);
  static final Color black = Color(0xFF000000);
}

class BadStrings {
  static final String appTitle = 'Badminton Booking';

  // Calendar page

  // bottom navigation bar
  static final String calendarNavBarTitle = 'Calendar'.toUpperCase();
  static final String reportsNavBarTitle = 'Reports'.toUpperCase();
  static final String crmNavBarTitle = 'CRM'.toUpperCase();
  static final String settingsNavBarTitle = 'Setiings'.toUpperCase();

}

class BadSizes {

  // Calendar page
  static final double navBarIcons = 20;
  static final double navBarTitles = 9;

}

class BadStyles {

  static final TextStyle navBarStyle =
    TextStyle(fontSize: BadSizes.navBarTitles);
}