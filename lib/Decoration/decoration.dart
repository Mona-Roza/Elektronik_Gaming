import 'package:flutter/material.dart';

Decoration boxesdecorations(Color color, Color borderColor) {
  return BoxDecoration(
    color: color,
    border: Border.all(
      color: borderColor,
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(4),
  );
}
