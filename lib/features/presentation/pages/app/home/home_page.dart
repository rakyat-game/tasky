import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/core/core.dart';
import 'package:tasky/features/presentation/widgets/app_widgets.dart';
import 'package:tasky/routes.dart';

import 'home/home_cubit.dart';
import 'home/todo_states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<HomeCubit>();
    cubit.getTasks(accessToken: Strings.testToken); // Replace with actual token
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is TaskErrorState) {
          // Handle error, e.g., show a snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            leadingWidth: 4,
            title: const Text(
              "Logo",
            ),
            actions: [
              IconButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(RouteGenerator.profile),
                icon: AppIcons.profile,
              ),
              IconButton(
                onPressed: () {
                  
                  Navigator.of(context).pushNamed(RouteGenerator.login);
                },
                icon: AppIcons.logout,
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Strings.myTasks,
                      style: FontStyles.menuTitleStyle,
                    ),
                  ),
                  ChipList(
                    listOfChipNames: Strings.filters,
                    inactiveBgColorList: [
                      AppColors.inprogressBackgroundColor
                    ],
                    activeBgColorList: [AppColors.inprogressTextColor],
                    showCheckmark: false,
                    borderRadiiList: [50],
                    inactiveTextColorList: [AppColors.secondaryTextColor],
                    listOfChipIndicesCurrentlySelected: [0],
                  ),
                  Expanded(
                    child: state is TaskLoadingState
                        ? const Center(child: CircularProgressIndicator())
                        : state is TasksGetSuccessState
                            ? ListView.separated(
                                itemBuilder: (_, index) => TaskItem(),
                                separatorBuilder: (_, index) =>
                                    const SizedBox(height: 8),
                                itemCount: state.tasks.length,
                              )
                            : state is TaskErrorState
                                ? Center(
                                    child: Text(
                                      "Error: ${state.message}",
                                      style: const TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  )
                                : const Center(
                                    child: Text("No tasks available."),
                                  ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'QR',
                onPressed: () {},
                shape: const CircleBorder(),
                mini: true,
                child: Icon(
                  IconlyBold.scan,
                  color: AppColors.inprogressTextColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FloatingActionButton(
                heroTag: 'add task',
                onPressed: () =>
                    Navigator.of(context).pushNamed(RouteGenerator.addItem),
                shape: const CircleBorder(),
                backgroundColor: AppColors.inprogressTextColor,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
