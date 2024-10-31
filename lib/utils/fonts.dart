import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/utils/colors.dart';

class FontStyles {
  static final mainTextStyle = GoogleFonts.dmSans(
      fontSize: 32,
      color: APPColors.darkTextColor,
      fontWeight: FontWeight.w700);

  static final secondaryTextStyle = GoogleFonts.dmSans(
      fontSize: 16,
      color: APPColors.secondaryTextColor,
      fontWeight: FontWeight.w400);

  static final buttonTextStyle = GoogleFonts.dmSans(
      fontSize: 20,
      color: APPColors.whiteBackground,
      fontWeight: FontWeight.w700);

  static final hintTextStyle = GoogleFonts.dmSans(
    fontSize: 16,
    color: APPColors.lightTextColor,
    fontWeight: FontWeight.w400,
  );

  static final textButtonStyle = GoogleFonts.dmSans(
      fontSize: 16,
      color: APPColors.inprogressTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.underline);
}
