import 'package:flutter/material.dart';

Widget widthSpacer() {
  return SizedBox(width: 50);
}

Widget indent(Widget child) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 35.0),
    child: child,
  );
}
