import 'package:flutter/material.dart';
import 'package:tasky/app/presentation/widgets/date_card.dart';
import 'package:tasky/utils/utils.dart';

import 'package:tasky/app/presentation/widgets/display_date.dart';

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
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Images.art,
                  height: 250,
                  width: double.infinity,
                ),
                Text(
                  "Grocery Shopping App",
                  style: FontStyles.textTitleStyle,
                  textAlign: TextAlign.start,
                ),
                Text(
                  """This application is designed for super shops. By using 
this application they can enlist all their products in one 
place and can deliver. Customers will get a one-stop 
solution for their daily shopping.""",
                  style: FontStyles.secondaryTextStyle,
                ),
                DisplayDate()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
