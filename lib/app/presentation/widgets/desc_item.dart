import 'package:flutter/material.dart';
import 'package:tasky/utils/utils.dart';

class DescItem extends StatefulWidget {
  final TextEditingController controller;

  const DescItem({
    super.key,
    required this.controller,
  });

  @override
  State<DescItem> createState() => _TextInputState();
}

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
            // Added labelText
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
