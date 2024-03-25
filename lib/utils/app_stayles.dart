import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTextStyles {
  // Static method to create a bold text style
  static TextStyle boldTextStyle({
    double fontSize = 20,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }



}