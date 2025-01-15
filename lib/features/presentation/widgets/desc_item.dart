import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

/// A widget that represents a description item with a text field.
class DescItem extends StatefulWidget {
  /// Controller for the text field.
  final TextEditingController controller;

  /// Creates a [DescItem] widget.
  ///
  /// The [controller] parameter must not be null.
  const DescItem({
    super.key,
    required this.controller,
  });

  @override
  State<DescItem> createState() => _TextInputState();
}

/// State class for [DescItem] widget.
class _TextInputState extends State<DescItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: TextField(
          controller: widget.controller,
          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            hintText: Strings.descHere,
            hintStyle: FontStyles.hintTextStyle,
            border: WidgetStyles.borderStyle,
            focusedBorder: WidgetStyles.borderStyle,
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          expands: true,
          textAlign: TextAlign.start,
        ),
    );
  }
}