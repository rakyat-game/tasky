import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String labelText;
  final TextInputType inputType;
  final TextEditingController controller;

  PasswordInput(
      {super.key,
        required this.labelText,
        required this.controller,
        required this.inputType,});



  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: true,
      cursorColor: Colors.blue, // Replace with your desired color
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        floatingLabelStyle: const TextStyle(color: Colors.blue), // Replace with your desired color
        labelText: widget.labelText, // Added labelText
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1.5,
          ),
        ),
      ),
      keyboardType: widget.inputType,
    );
  }
}