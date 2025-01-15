import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/core/core.dart';

class ProgressTag extends StatelessWidget {
  final String state;

  const ProgressTag({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final bgColor = _backgroundColorSwitcher(state);
    final textColor = _textColorSwitcher(state);
    return Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.0), // Add rounded corners
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          state,
          style: GoogleFonts.dmSans(
              color: textColor, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Color _textColorSwitcher(String state) {
    const colorMap = {
      'waiting': AppColors.waitingTextColor,
      'inprogress': AppColors.inprogressTextColor,
      'finished': AppColors.finishTextColor,
    };

    return colorMap[state.toLowerCase()] ?? AppColors.waitingTextColor;
  }

  Color _backgroundColorSwitcher(String state) {
    // Use a map for faster lookup
    const colorMap = {
      'waiting': AppColors.waitingBackgroundColor,
      'inprogress': AppColors.inprogressBackgroundColor,
      'finished': AppColors.finishBackgroundColor,
    };

    return colorMap[state.toLowerCase()] ?? AppColors.waitingBackgroundColor;
  }
}
