import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:tasky/utils/utils.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DateCardState();
}

class _DateCardState extends State<DatePicker> {
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
          suffixIcon: Icon(
            IconlyBroken.calendar,
            color: AppColors.inprogressTextColor,
          ),
          hintText: Strings.chooseDueDate,
          // Added labelText
          hintStyle: FontStyles.hintTextStyle,
          border: WidgetStyles.borderStyle,
          focusedBorder: WidgetStyles.borderStyle),
      maxLines: 1,
    );
  }

  Future<void> _selectDate(context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      setState(() {
        var formattedDate = DateFormat("dd MMMM, yyyy").format(pickedDate);
        _dateController.text = formattedDate;
      });
    }
  }
}
