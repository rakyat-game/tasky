import 'dart:core';

import 'package:flutter/material.dart';
import 'package:tasky/utils/utils.dart';

class SignButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const SignButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )),
        backgroundColor: WidgetStateProperty.all(AppColors.inprogressTextColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(text, style: FontStyles.buttonTextStyle),
      ),
    );
  }
}
