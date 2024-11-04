import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

class PriorityTag extends StatelessWidget {
  final String priority;

  const PriorityTag({super.key, required this.priority});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          AppIcons.flagIcon,
          SizedBox(
            width: 4,
          ),
          Text(
            priority,
            style: TextStyle(
                color: AppColors.inprogressTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
