import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class PasswordInput extends StatefulWidget {
  final TextInputType inputType;
  final TextEditingController controller;

  const PasswordInput({
    super.key,

    required this.controller,
    required this.inputType,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !showPassword,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon: Icon(showPassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined)),
        hintText: 'Password', // Added labelText
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: APPColors.secondaryTextColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: APPColors.secondaryTextColor,
            width: 1,
          ),
        ),
      ),
      keyboardType: widget.inputType,
      maxLines: 1,
    );
  }
}
