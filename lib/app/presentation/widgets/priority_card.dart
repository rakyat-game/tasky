import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/utils/utils.dart';

class PriorityCard extends StatefulWidget {
  const PriorityCard({super.key});

  @override
  State<PriorityCard> createState() => _PriorityCardState();
}

class _PriorityCardState extends State<PriorityCard> {
  List<DropdownMenuItem> items = Strings.priorities
      .map((item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
          )))
      .toList();
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
          print("Tapped");
        },
        items: items,
        style: FontStyles.cardTextSelectorStyle,
        elevation: 0,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            icon: SvgIcon(
              icon: SvgIconData(Images.flag),
              color: AppColors.inprogressTextColor,
            )),
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
