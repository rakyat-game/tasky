import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasky/core/core.dart';

class DateCard extends StatefulWidget {
  const DateCard({super.key});

  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
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
