import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

/// A widget that displays a date with a label and an icon.
class DisplayDate extends StatelessWidget {
  final String date;

  /// Creates a [DisplayDate] widget.
  const DisplayDate({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.inprogressBackgroundColor,
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "END DATE",
                  style: FontStyles.cardLabelStyle,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  date,
                  style: FontStyles.cardTextStyle,
                )
              ],
            ),
            AppIcons.calender
          ],
        ),
      ),
    );
  }
}
