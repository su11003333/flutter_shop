import 'package:flutter/material.dart';

class ColorUtil {
  static Color string2Color(String colorString) {
    int value = 0x00000000;
    if (colorString[0] == '#') {
      colorString = colorString.substring(1);
    }
    //將color轉為16位元
    value = int.tryParse(colorString, radix: 16);
    if (value != null) {
      if (value < 0xFF000000) {
        value += 0xFF000000;
      }
    }
    //轉換後傳入Color中
    return Color(value);
  }
}
