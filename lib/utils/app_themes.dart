
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes{
  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.mainBlack,
      primaryColor: Colors.amber,
      iconTheme: const IconThemeData(color: Colors.grey),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.grey),
      ),
      cardColor: AppColors.secondaryBlack,
      indicatorColor: AppColors.greyBlack,
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff101010),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18)
      )
  );

  /// Light Theme

  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.secondaryWhite,
      indicatorColor: Colors.grey[300],
      primaryColor: Colors.amber,
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.black),
      ),
           cardColor: Colors.grey[300],
           appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 18)
      ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey[300],
      filled: true,
      hintStyle: TextStyle(color: Colors.grey[600]),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(21),
        borderSide: BorderSide.none
      )
    ),


  );
}