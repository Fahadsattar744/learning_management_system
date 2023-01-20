import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'RobotoRegular',
      primaryColor: isDarkTheme ? Colors.black : AppColors.primary,
      iconTheme: IconThemeData(
        color: isDarkTheme ? Colors.white : Colors.black,
      ),
      scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      indicatorColor:
          isDarkTheme ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      hintColor: isDarkTheme ? Colors.white : const Color(0xFF989898),
      highlightColor:
          isDarkTheme ? const Color(0xff372901) : const Color(0xffFCE192),
      hoverColor:
          isDarkTheme ? const Color(0xff3A3A3B) : const Color(0xff4285F4),
      focusColor:
          isDarkTheme ? const Color(0xff0B2512) : const Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? const Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(milliseconds: 1000),
          primary: AppColors.primary,
          shadowColor: AppColors.primary.withOpacity(0.90),
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          fixedSize: Size(100.w, 6.h),
          onPrimary: isDarkTheme ? Colors.black : Colors.white,
        ),
      ),
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 15,
          color: isDarkTheme ? Colors.white : AppColors.primary,
        ),
        backgroundColor: isDarkTheme ? Colors.red : AppColors.primary,
        foregroundColor: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
        elevation: 0.0,
      ),
      // textTheme: TextTheme(
      //   // headline1:
      //   // GoogleFonts.openSans(
      //   //   fontSize: 12,
      //   //   fontWeight: FontWeight.bold,
      //   //   letterSpacing: -1.5,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF222222),
      //   // ),
      //   // headline2: GoogleFonts.openSans(
      //   //   fontSize: 30,
      //   //   fontWeight: FontWeight.bold,
      //   //   letterSpacing: -0.5,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // headline3: GoogleFonts.openSans(
      //   //   fontSize: 18,
      //   //   fontWeight: FontWeight.w400,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // headline4: GoogleFonts.openSans(
      //   //   fontSize: 14,
      //   //   fontWeight: FontWeight.w400,
      //   //   letterSpacing: 0.25,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // headline5: GoogleFonts.openSans(
      //   //   fontSize: 14,
      //   //   fontWeight: FontWeight.w400,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // headline6: GoogleFonts.openSans(
      //   //   fontSize: 12,
      //   //   fontWeight: FontWeight.w500,
      //   //   letterSpacing: 0.15,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // subtitle1: GoogleFonts.openSans(
      //   //   fontSize: 16,
      //   //   fontWeight: FontWeight.w400,
      //   //   letterSpacing: 0.15,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // subtitle2: GoogleFonts.openSans(
      //   //   fontSize: 12,
      //   //   fontWeight: FontWeight.w500,
      //   //   letterSpacing: 0.1,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF555555),
      //   // ),
      //   // bodyText1: GoogleFonts.openSans(
      //   //   fontSize: 16,
      //   //   fontWeight: FontWeight.w400,
      //   //   letterSpacing: 0.5,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // bodyText2: GoogleFonts.openSans(
      //   //   fontSize: 14,
      //   //   fontWeight: FontWeight.w400,
      //   //   letterSpacing: 0.25,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // button: GoogleFonts.openSans(
      //   //   fontSize: 14,
      //   //   fontWeight: FontWeight.w500,
      //   //   letterSpacing: 1.25,
      //   //   color: isDarkTheme ? Colors.white : Colors.white,
      //   // ),
      //   // caption: GoogleFonts.openSans(
      //   //   fontSize: 12,
      //   //   fontWeight: FontWeight.w400,
      //   //   letterSpacing: 0.4,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      //   // overline: GoogleFonts.openSans(
      //   //   fontSize: 10,
      //   //   fontWeight: FontWeight.w400,
      //   //   letterSpacing: 1.5,
      //   //   color: isDarkTheme ? Colors.white : const Color(0xFF272F4B),
      //   // ),
      // ),
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme ? Colors.white : Colors.black),
    );
  }
}
class TextStyles {
  static TextStyle buildAppBarTexStyle() {
    return TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold);
  }


  static TextStyle SmallTitleTexStyle() {
    return TextStyle(fontSize: 12,fontWeight: FontWeight.bold );
  }
  static TextStyle MiddlesmallTitleTexStyle() {
    return TextStyle(fontSize: 11,fontWeight: FontWeight.bold );
  }


  static TextStyle VerySmallTitleTexStyle() {
    return TextStyle(fontSize: 10, fontWeight: FontWeight.bold );
  }

  static TextStyle LargeTitleTexStyle() {
    return TextStyle(fontSize: 13,fontWeight: FontWeight.bold  );
  }

}