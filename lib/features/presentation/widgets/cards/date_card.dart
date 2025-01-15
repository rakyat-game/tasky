import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasky/core/core.dart';

/// A widget that displays a card with a date picker.
class DateCard extends StatefulWidget {
  /// Creates a [DateCard] widget.
  const DateCard({super.key});

  @override
  State<DateCard> createState() => _DateCardState();
}

/// The state for the [DateCard] widget.
class _DateCardState extends State<DateCard> {
  /// Controller for the date text field.
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.inprogressBackgroundColor,
      child: InkWell(
        onTap: () => _selectDate(context),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "END DATE",
                    style: FontStyles.cardLabelStyle,
                  ),
                  Text(
                    _dateController.text,
                    style: FontStyles.cardTextStyle,
                  )
                ],
              ),
              AppIcons.calender
            ],
          ),
        ),
      ),
    );
  }

  /// Displays a date picker dialog and updates the date text field with the selected date.
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