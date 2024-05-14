import 'package:flutter/material.dart';

extension BackgroundColor on BuildContext {
  Color get backgroundColor => Color.fromARGB(255, 255, 255, 255);
  Color get forgroundColor => const Color(0xff14238A);
  Color get onboarding1color => const Color.fromRGBO(230, 230, 230,100);
}

extension Size on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
