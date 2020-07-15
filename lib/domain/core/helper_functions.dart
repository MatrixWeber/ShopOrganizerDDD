import 'package:flutter/material.dart';

Widget popupMenuItem(String location, int locationIndex) {
  return PopupMenuItem(
    value: locationIndex,
    child: Text(location, style: textStyle(color: Colors.black)),
  );
}

Widget icon(IconData iconData, [Color color = Colors.white]) {
  return Icon(iconData, color: color);
}

TextStyle textStyle(
    {double fontSize = 16.0,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
