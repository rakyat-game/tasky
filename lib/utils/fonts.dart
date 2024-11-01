import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/utils/utils.dart';

class FontStyles {
  static final mainTextStyle = GoogleFonts.dmSans(
      fontSize: 32,
      color: AppColors.darkTextColor,
      fontWeight: FontWeight.w700);
  static final secondaryTextStyle = GoogleFonts.dmSans(
      fontSize: 16,
      color: AppColors.secondaryTextColor,
      fontWeight: FontWeight.w400);
  static final buttonTextStyle = GoogleFonts.dmSans(
      fontSize: 20,
      color: AppColors.whiteBackground,
      fontWeight: FontWeight.w700);
  static final textTitleStyle = GoogleFonts.dmSans(
      fontSize: 24,
      color: AppColors.darkTextColor,
      fontWeight: FontWeight.w700);
  static final hintTextStyle = GoogleFonts.dmSans(
    fontSize: 16,
    color: AppColors.lightTextColor,
    fontWeight: FontWeight.w400,
  );
  static final textButtonStyle = GoogleFonts.dmSans(
      fontSize: 16,
      color: AppColors.inprogressTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.underline);
  static final disableLabelStyle = GoogleFonts.dmSans(
      fontSize: 14,
      color: AppColors.disableLabelColor,
      fontWeight: FontWeight.w500);
  static final disableContentStyle = GoogleFonts.dmSans(
    fontSize: 24,
    color: AppColors.disableContentColor,
    fontWeight: FontWeight.w700
  );
  static final errorMenuTextStyle = GoogleFonts.dmSans(
    fontSize: 16,
    color: AppColors.errorTextColor,
    fontWeight: FontWeight.w500
  );
  static final menuTextStyle = GoogleFonts.dmSans(
    fontSize: 16,
    color: AppColors.darkTextColor,
    fontWeight: FontWeight.w500
  );

  static final cardLabelStyle = GoogleFonts.dmSans(
      fontSize: 10,
      color: AppColors.disableLabelColor,
      fontWeight: FontWeight.w500);

  static final cardTextStyle = GoogleFonts.dmSans(
      fontSize: 16,
      color: AppColors.darkTextColor,
      fontWeight: FontWeight.w700);
}
