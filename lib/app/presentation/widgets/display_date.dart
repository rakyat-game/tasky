import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:tasky/utils/utils.dart';

class DisplayDate extends StatelessWidget {
  const DisplayDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.inprogressBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("END DATE", style: FontStyles.cardLabelStyle,),
                SizedBox(height: 4,),
                Text("30 June, 2022", style: FontStyles.cardTextStyle,)
              ],
            ),
            Icon(IconlyBroken.calendar, color: AppColors.inprogressTextColor,)
          ],
        ),
      ),
    );
  }
}
