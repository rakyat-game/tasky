import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/core/core.dart';
import 'package:tasky/routes.dart';

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
        leading: SizedBox(),
        leadingWidth: 4,
        title: Text(
          "Logo",
          style: FontStyles.textTitleStyle,
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteGenerator.profile),
              icon: AppIcons.profile),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteGenerator.login);
              },
              icon: AppIcons.logout)
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'QR',
            onPressed: () {},
            shape: CircleBorder(),
            mini: true,
            child: Icon(
              IconlyBold.scan,
              color: AppColors.inprogressTextColor,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            heroTag: 'add task',
            onPressed: () =>
                Navigator.of(context).pushNamed(RouteGenerator.addItem),
            shape: CircleBorder(),
            backgroundColor: AppColors.inprogressTextColor,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}
