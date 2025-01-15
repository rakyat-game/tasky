import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/core/core.dart';

/// A stateful widget that represents the state of a task.
class TaskState extends StatefulWidget {
  /// Creates a [TaskState] widget.
  const TaskState({super.key});

  @override
  State<TaskState> createState() => _TaskStateState();
}

/// The state for the [TaskState] widget.
class _TaskStateState extends State<TaskState> {
  /// A list of dropdown menu items representing the possible states.
  List<DropdownMenuItem> items = Strings.states
      .map((item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
          )))
      .toList();

  /// The currently selected state text.
  String stateText = Strings.states.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.inprogressBackgroundColor,
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: DropdownButton(
          style: FontStyles.cardTextSelectorStyle,
          elevation: 0,
          icon: Icon(
            IconlyBold.arrow_down_2,
            color: AppColors.inprogressTextColor,
          ),
          borderRadius: BorderRadius.circular(16),
          selectedItemBuilder: (item) => items,
          items: items,
          underline: SizedBox(),
          iconSize: 24,
          isExpanded: true,
          value: stateText,
          onChanged: (asd) {
            setState(() {
              stateText = asd.toString();
            });
          },
          dropdownColor: AppColors.inprogressBackgroundColor,
        ),
      ),
    );
  }
}