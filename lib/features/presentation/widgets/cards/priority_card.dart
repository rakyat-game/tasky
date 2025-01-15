import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/core/core.dart';

/// A widget that displays a card with a priority dropdown menu.
class PriorityCard extends StatefulWidget {
  /// Creates a [PriorityCard] widget.
  const PriorityCard({super.key});

  @override
  State<PriorityCard> createState() => _PriorityCardState();
}

/// The state for the [PriorityCard] widget.
class _PriorityCardState extends State<PriorityCard> {
  /// The list of dropdown menu items created from the priorities.
  List<DropdownMenuItem> items = Strings.priorities
      .map((item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
          )))
      .toList();

  /// The currently selected priority.
  String stateText = Strings.priorities.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.inprogressBackgroundColor,
          borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.only(left: 16, top: 2, bottom: 2, right: 4),
      child: DropdownButtonFormField(
        onTap: () {
          // Handle tap event
        },
        items: items,
        style: FontStyles.cardTextSelectorStyle,
        elevation: 0,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            icon: AppIcons.flagIcon),
        icon: Icon(
          IconlyBold.arrow_down_2,
          color: AppColors.inprogressTextColor,
        ),
        borderRadius: BorderRadius.circular(16),
        selectedItemBuilder: (context) => items,
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
    );
  }
}