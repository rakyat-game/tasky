import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/core/core.dart';

class AppIcons {
  static const backArrow =
      Icon(IconlyBold.arrow_left, color: AppColors.darkTextColor);
  static const flagIcon = SvgIcon(
    icon: SvgIconData(Images.flag),
    color: AppColors.inprogressTextColor,
    size: 14,
  );

  static const calender = Icon(
    IconlyBold.calendar,
    color: AppColors.inprogressTextColor,
  );

  static const profile = SvgIcon(
    icon: SvgIconData(Images.profile),
    color: AppColors.darkTextColor,
  );
  static const logout = Icon(
    IconlyLight.logout,
    color: AppColors.inprogressTextColor,
  );
}
