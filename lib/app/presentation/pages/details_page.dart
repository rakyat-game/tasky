import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:tasky/app/presentation/widgets/display_date.dart';
import 'package:tasky/app/presentation/widgets/priority_card.dart';
import 'package:tasky/app/presentation/widgets/task_state.dart';
import 'package:tasky/utils/utils.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: AppBar(
            leading: IconButton(
                onPressed: () {
                  //TODO: Created navigation for the button
                },
                icon: AppIcons.backArrow),
            title: Text(
              Strings.taskDetails,
              style: FontStyles.textTitleStyle,
            ),
            actions: [
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Edit",
                                  style: FontStyles.menuTextStyle,
                                ))),
                        PopupMenuItem(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Delete",
                                style: FontStyles.errorMenuTextStyle,
                              )),
                        )
                      ])
            ],
          ),
        ),
        body: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Images.art,
                    height: 250,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Grocery Shopping App",
                    style: FontStyles.textTitleStyle,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    """This application is designed for super shops. By using 
              this application they can enlist all their products in one 
              place and can deliver. Customers will get a one-stop 
              solution for their daily shopping.""",
                    style: FontStyles.secondaryTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DisplayDate(),
                  SizedBox(
                    height: 16,
                  ),
                  TaskState(),
                  SizedBox(
                    height: 16,
                  ),
                  PriorityCard(),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: QrImageView(
                      padding: EdgeInsets.all(32),
                      data: "6640dc5e1971e94d3c98d84d",
                      version: QrVersions.auto,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
