import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../utils/fonts.dart';
import '../../../utils/utils.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(color: APPColors.secondaryTextColor),
          borderRadius: BorderRadius.circular(8)),
      child: InternationalPhoneNumberInput(
        keyboardType: TextInputType.number,
        inputBorder: const OutlineInputBorder(),
        onInputChanged: (value) {

        },
        formatInput: false,
        selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG, trailingSpace: false),
        inputDecoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 12),
            border: InputBorder.none,
            hintText: "123 456-7890",
            hintStyle: FontStyles.hintTextStyle),
      ),
    );
  }
}
