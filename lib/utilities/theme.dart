import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: const Color(0xFFf5f5f5),
        primaryContainer: Colors.grey.shade200,
        primary: const Color(0xff6925ad),
        secondary: const Color(0xFF75A1D9), // icons
        inversePrimary: const Color(0xFF336699) // buttons and actions keys
        ),
    // c
    // buttonTheme: const ButtonThemeData(buttonColor: Color(0xFF336699)),
    checkboxTheme: const CheckboxThemeData(
        side: BorderSide(color: Color(0xff6925ad), width: 2)),
    radioTheme: RadioThemeData(
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        // if (states.contains(MaterialState.selected)) {
        //   return Color(0xFF480674);
        // }
        return const Color(0xff6925ad);
      }),
    ),
    tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        indicatorColor: Color(0xFFf5f5f5),
        unselectedLabelColor: Colors.white60,
        labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),

    appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff6925ad),
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 1.7.h,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'),
        iconTheme: const IconThemeData(
          size: 18,
          color: Color(0xffffffff),
        ),
        actionsIconTheme: const IconThemeData(
          size: 18,
          color: Color(0xffffffff),
        )),
        iconTheme:  const IconThemeData(
          size: 13,
          // color: Color(0xffffffff),
        ),
    textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: Colors.black,
        fontFamily: 'Montserrat'));
        
