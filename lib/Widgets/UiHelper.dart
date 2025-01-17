import 'package:flutter/material.dart';

class Uihelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    String? fontFamily,
    required FontWeight fontWeight,
    required double size,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily ?? "regular",
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
