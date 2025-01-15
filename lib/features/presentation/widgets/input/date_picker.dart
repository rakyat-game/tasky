import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasky/core/core.dart';

/// A widget that displays a date picker input field.
class DatePicker extends StatefulWidget {
  /// Creates a [DatePicker] widget.
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DateCardState();
}

/// State class for [DatePicker] widget.
class _DateCardState extends State<DatePicker> {
  /// Controller for the date input field.
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => _selectDate(context),
      controller: _dateController,
      readOnly: true,
      style: FontStyles.cardTextStyle,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
          suffixIcon: AppIcons.calender,
          hintText: Strings.chooseDueDate,
          // Added labelText
          hintStyle: FontStyles.hintTextStyle,
          border: WidgetStyles.borderStyle,
          focusedBorder: WidgetStyles.borderStyle),
      maxLines: 1,
    );
  }

  /// Displays a date picker dialog and updates the input field with the selected date.
  ///
  /// [context] is the build context of the widget.
  Future<void> _selectDate(context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    setState(() {
      var formattedDate = DateFormat("dd MMMM, yyyy").format(pickedDate!);
      _dateController.text = formattedDate;
    });
  }
}
