import 'package:flutter/material.dart';
import 'package:tasky/core/core.dart';

/// A widget that displays a profile item card with a title and data.
class ProfileItemCard extends StatelessWidget {
  /// The title of the profile item.
  final String title;

  /// The data of the profile item.
  final String data;

  /// Creates a [ProfileItemCard] widget.
  ///
  /// The [title] and [data] parameters must not be null.
  const ProfileItemCard({super.key, required this.title, required this.data});

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
                title,
                style: FontStyles.disableLabelStyle,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(data, style: FontStyles.disableContentStyle)
              // Text(data)
            ],
          ),
        ),
      ),
    );
  }
}