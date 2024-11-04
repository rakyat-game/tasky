import 'package:flutter/material.dart';

import '../core.dart';

class WidgetStyles {
  static final borderStyle = OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.secondaryTextColor,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(10),
  ).copyWith(
    gapPadding: 0
  );
}
