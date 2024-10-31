import 'package:flutter/material.dart';
import 'package:tasky/utils/utils.dart';

class ProfileItemCard extends StatelessWidget {
  const ProfileItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.name.toUpperCase(),
                style: FontStyles.disableLabelStyle,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 4,
              ),
              Text("Youssef Mohamed", style: FontStyles.disableContentStyle)
              // Text(data)
            ],
          ),
        ),
      ),
    );
  }
}
