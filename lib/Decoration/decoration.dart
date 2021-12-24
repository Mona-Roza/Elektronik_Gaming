import 'package:flutter/material.dart';

Decoration boxesdecorations(Color color) {
  return BoxDecoration(
    color: color,
    border: Border.all(
      color: Colors.transparent,
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(4),
  );
}
