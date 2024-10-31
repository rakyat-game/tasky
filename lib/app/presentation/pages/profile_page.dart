import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tasky/utils/utils.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(IconlyBold.arrow_left,
                color: APPColors.darkTextColor)),
        title: Text(Strings.profile,style: FontStyles.textTitleStyle,),
      ),
    );
  }
}
