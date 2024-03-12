import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/screen/home_screen.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              displayLarge: TextStyle(
                fontSize: 40,
                color: Color(0xFF232B55),
                fontWeight: FontWeight.w600,
              ),
              displayMedium: TextStyle(
                fontSize: 20,
                color: Color(0xFF232B55),
                fontWeight: FontWeight.w600,
              )),
          cardColor: Color(0xFFF4EDDB),
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF202020),
            onPrimary: Color(0xFF505050),
            secondary: Color(0xFFBBBBBB),
            onSecondary: Color(0xFFEAEAEA),
            error: Color(0xFFF32424),
            onError: Color(0xFFF32424),
            background: Color(0xFFE7626C),
            onBackground: Color(0xFFFFFFFF),
            surface: Color(0xFF54B435),
            onSurface: Color(0xFF54B435),
          ).copyWith(background: Color(0xFFE7626C))),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

enum ChangeType { add, remove }
