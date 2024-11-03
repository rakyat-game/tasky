// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tasky/app/presentation/widgets/profile_item_card.dart';
import 'package:tasky/utils/utils.dart';

import '../widgets/phone_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          //TODO: Created navigation for the button
        }, icon: AppIcons.backArrow),
        title: Text(
          Strings.profile,
          style: FontStyles.textTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (_, item) => PhoneCard(phoneNumber: "+201280951339",),
          separatorBuilder: (BuildContext context, int index) => SizedBox(height: 16,), itemCount: 5,
        ),
      ),
    );
  }
}
