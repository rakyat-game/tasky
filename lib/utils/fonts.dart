import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/utils/colors.dart';

class FontStyles {
  static final mainTextStyle = GoogleFonts.dmSans(
      fontSize: 32, color: darkTextColor, fontWeight: FontWeight.w700);

  static final secondaryTextStyle = GoogleFonts.dmSans(
      fontSize: 16, color: secondaryTextColor, fontWeight: FontWeight.w400);

  static final buttonTextStyle = GoogleFonts.dmSans(
      fontSize: 20, color: whiteBackground, fontWeight: FontWeight.w700);

  static final hintTextStyle = GoogleFonts.dmSans(
    fontSize: 16, color: lightTextColor, fontWeight: FontWeight.w400,
  );
}
