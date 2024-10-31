import 'package:flutter/material.dart';

import 'utils.dart';

class WidgetStyles {
  static final borderStyle = OutlineInputBorder(
    borderSide: const BorderSide(
      color: APPColors.secondaryTextColor,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}
