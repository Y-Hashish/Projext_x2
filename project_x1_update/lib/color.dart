import 'dart:ui';

import 'package:flutter/cupertino.dart';

var primeC = const Color.fromARGB(255, 226, 169, 72);

extension BackgroundColor on BuildContext {
  Color get backC => const Color.fromARGB(255, 221, 194, 147);
  Color get primeC => Color.fromARGB(255, 230, 164, 50);
}
