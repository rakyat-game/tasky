import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

import 'package:tasky/utils/utils.dart';

class PriorityTag extends StatelessWidget {
  final String priority;
  const PriorityTag({super.key, required this.priority});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SvgIcon(
            icon: SvgIconData(Images.flag),
            color: AppColors.inprogressTextColor,
            size: 14,
          ),
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
