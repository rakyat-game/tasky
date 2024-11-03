import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/utils/utils.dart';

import '../widgets/task_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _filters = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Logo",
          style: FontStyles.textTitleStyle,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgIcon(
                icon: SvgIconData(Images.profile),
                color: AppColors.darkTextColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.logout,
                color: AppColors.inprogressTextColor,
              ))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Strings.myTasks,
              style: FontStyles.menuTitleStyle,
            ),
          ),
          ChipList(
            listOfChipNames: Strings.filters,
            inactiveBgColorList: [AppColors.inprogressBackgroundColor],
            activeBgColorList: [AppColors.inprogressTextColor],
            showCheckmark: false,
            borderRadiiList: [50],
            inactiveTextColorList: [AppColors.secondaryTextColor],
            listOfChipIndicesCurrentlySelected: [0],
          ),
          TaskItem()
        ]),
      )),
    );
  }
}
