import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';
import 'package:tasky/features/app/presentation/widgets/app_widgets.dart';
import 'package:tasky/routes.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.transparent,
        child: ListTile(
          onTap: () => Navigator.of(context)
              .pushNamed(RouteGenerator.details),
          contentPadding: EdgeInsets.zero,
          leading: ClipOval(
            child: Image.network(
              "https://gratisography.com/wp-content/uploads/2024/10/gratisography-cool-cat-800x525.jpg",
              height: 55,
              width: 55,
              fit: BoxFit.fill,
            ),
          ),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Text(
                "Grocery Shopping App",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: FontStyles.listTitleStyle,
              ),
            ),
            ProgressTag(state: "Inprogress",)
          ]),
          subtitle: Column(
            children: [
              Text(
                "BlThis application is designed for super shops. By using ah Blah Blah Blah Blah",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: FontStyles.descriptionStyle,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriorityTag(priority: "Medium"),
                  Text(
                    "30/12/2022",
                    style: FontStyles.disableLabelStyle,
                  )
                ],
              )
            ],
          ),
          trailing: PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(child: Text("Edit")),
              PopupMenuItem(child: Text("Delete"))
            ],
          ),
        ));
  }
}
