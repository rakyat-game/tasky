import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<Dropdown> {
  List<DropdownMenuItem> items = ['Fresh Graduate', 'Junior', 'Mid', 'Senior']
      .map((item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
          )))
      .toList();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(Strings.expLevel, style: FontStyles.hintTextStyle,),
      decoration: InputDecoration(
        focusedBorder: WidgetStyles.borderStyle,
        border: WidgetStyles.borderStyle
      ),
      items: items,
      onChanged: (value) {
      },
    );
  }
}
