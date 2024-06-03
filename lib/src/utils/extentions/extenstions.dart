import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ColorExt on Color {
  static Color fromHex(String hex) {
    final String newText = hex.replaceAll("#", "0xFF");
    return Color(int.parse(newText));
  }
}

extension BuildContextExt on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
}
