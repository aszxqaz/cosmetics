import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle productKind = const TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 11.58,
    height: 1.6,
    letterSpacing: 0.1158,
    color: Colors.black,
  );

  static TextStyle productTitle = const TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.2857,
    letterSpacing: 0.14,
    color: Colors.black,
  );

  static TextStyle price = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.15625,
    letterSpacing: 0.16,
    color: Colors.black,
  );

  static TextStyle prevPrice = price.copyWith(
    decoration: TextDecoration.lineThrough,
    color: const Color.fromRGBO(0, 0, 0, 0.2),
  );
}
