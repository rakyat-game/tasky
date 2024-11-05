import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

class TextInput extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final String hint;

  const TextInput(
      {super.key,
      required this.controller,
      required this.inputType,
      required this.hint});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        hintText: widget.hint, // Added labelText
        hintStyle: FontStyles.hintTextStyle,
        border: WidgetStyles.borderStyle,
        focusedBorder: WidgetStyles.borderStyle
      ),
      keyboardType: widget.inputType,
      maxLines: 1,
    );
  }
}
