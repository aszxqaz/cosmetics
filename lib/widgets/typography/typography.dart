import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w600,
        fontFamily: 'VelaSans',
        color: Colors.white,
        letterSpacing: 2.5,
        height: 1.02857,
      ),
    );
  }
}

class HeaderSubtitle extends StatelessWidget {
  const HeaderSubtitle(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'VelaSans',
        color: Colors.white,
        letterSpacing: 0.16,
        height: 1.15625,
      ),
    );
  }
}
