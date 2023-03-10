import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MyContainer({
  required Widget child,
  Color? color,
  MaterialAccentColor? accentColor,
  required EdgeInsetsGeometry padding,
}) {
  return Container(
    height: 60,
    width: 300,
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: child,
  );
}
