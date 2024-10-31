import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/utils/utils.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/art.png"),
          const SizedBox(
            height: 32,
          ),
          Text(
            "Task Management &\nTo-Do List",
            style: GoogleFonts.dmSans(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: darkTextColor
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "This productive tool is designed to help\n"
"you better manage your task\n"
"project-wise conveniently!",
            style: secondaryTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: inprogressTextColor,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's Start",
                      style: buttonTextStyle,
                    ),
                    const SizedBox(width: 8,),
                    const Icon(IconlyBold.arrow_right, color: Colors.white,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
