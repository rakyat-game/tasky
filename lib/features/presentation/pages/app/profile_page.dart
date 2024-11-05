// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';
import 'package:tasky/features/presentation/widgets/app_widgets.dart';
import 'package:tasky/routes.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(RouteGenerator.home),
            icon: AppIcons.backArrow),
        title: Text(
          Strings.profile,
          style: FontStyles.textTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (_, item) => PhoneCard(
            phoneNumber: "+201280951339",
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 16,
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
