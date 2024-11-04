import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasky/app/presentation/widgets/priority_card.dart';
import 'package:tasky/routes.dart';
import 'package:tasky/utils/utils.dart';

import '../../../auth/presentation/widgets/auth_widgets.dart';
import '../widgets/date_picker.dart';
import '../widgets/desc_item.dart';

class NewItemPage extends StatelessWidget {
  const NewItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(RouteGenerator.home),
            icon: AppIcons.backArrow),
        title: Text(
          Strings.addNewTask,
          style: FontStyles.textTitleStyle,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: InkWell(
                  child: SvgPicture.asset(
                    Images.addImage,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(Strings.taskTitle, style: FontStyles.hintTextStyle),
              ),
              TextInput(
                controller: titleController,
                inputType: TextInputType.text,
                hint: Strings.titleHere,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(Strings.taskDesc, style: FontStyles.hintTextStyle),
              ),
              DescItem(
                controller: descController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(Strings.priority, style: FontStyles.hintTextStyle),
              ),
              PriorityCard(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(Strings.dueDate, style: FontStyles.hintTextStyle),
              ),
              DatePicker(),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                  width: double.infinity,
                  child: SignButton(text: "Add task", onTap: () {}))
            ],
          ),
        ),
      )),
    );
  }
}
