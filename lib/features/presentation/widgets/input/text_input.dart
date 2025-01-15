import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

/// A custom text input widget that extends [StatefulWidget].
///
/// This widget provides a [TextFormField] with custom styling and behavior.
///
/// The [TextInput] widget requires a [TextEditingController], [TextInputType],
/// and a hint text to be provided.
class TextInput extends StatefulWidget {
  /// The controller for the text input field.
  final TextEditingController controller;

  /// The type of keyboard to use for the text input field.
  final TextInputType inputType;

  /// The hint text to display in the text input field.
  final String hint;

  /// Creates a [TextInput] widget.
  ///
  /// The [controller], [inputType], and [hint] parameters are required.
  const TextInput(
      {super.key,
      required this.controller,
      required this.inputType,
      required this.hint,});

  @override
  State<TextInput> createState() => _TextInputState();
}

/// The state for the [TextInput] widget.
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
          focusedBorder: WidgetStyles.borderStyle),
      keyboardType: widget.inputType,
      maxLines: 1,
    );
  }
}