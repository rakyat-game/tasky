import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tasky/core/core.dart';

class PhoneInput extends StatelessWidget {
  final TextEditingController controller;

  const PhoneInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    PhoneNumber initialValue =
        PhoneNumber(phoneNumber: "", dialCode: "+20", isoCode: "EG");
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.secondaryTextColor),
          borderRadius: BorderRadius.circular(8)),
      child: InternationalPhoneNumberInput(
        initialValue: initialValue,
        keyboardType: TextInputType.number,
        inputBorder: WidgetStyles.borderStyle,
        onInputChanged: (PhoneNumber value) {
          controller.text = value.phoneNumber!;
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
