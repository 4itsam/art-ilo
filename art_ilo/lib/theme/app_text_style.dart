import 'package:flutter/material.dart';

class AppTextStyle {
  static const fontFamily = "rokh";

  static TextStyle createdTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    );
  }

  static TextStyle versionTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
  }
}
