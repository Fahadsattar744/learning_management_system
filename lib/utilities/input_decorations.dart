import 'package:flutter/material.dart';

import 'colors.dart';

class InputDecorations {
  static InputDecoration inputDecorationNoBorder({hintText = ""}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        // fontWeight: FontWeight.bold,
        fontSize: 12,
        color: Colors.black.withOpacity(0.4),
      ),
    );
  }

  static InputDecoration inputDecorationAllBorder({hintText = ""}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: AppColors.hintcolor,
      ),
      border: InputBorder.none,
    );
  }
}
