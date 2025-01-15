import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:tasky/core/core.dart';

/// A widget that displays a phone number inside a card with a copy-to-clipboard functionality.
class PhoneCard extends StatelessWidget {
  /// The phone number to be displayed.
  final String phoneNumber;

  /// Creates a [PhoneCard] widget.
  ///
  /// The [phoneNumber] parameter must not be null.
  const PhoneCard({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.name,
                    style: FontStyles.disableLabelStyle,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(phoneNumber, style: FontStyles.disableContentStyle)
                  // Text(data)
                ],
              ),
              IconButton(
                onPressed: () async {
                  _copyToClipboard(context, phoneNumber);
                },
                icon: SvgIcon(
                  icon: SvgIconData(Images.copy),
                  color: AppColors.inprogressTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Copies the given [text] to the clipboard and shows a [SnackBar] notification.
  ///
  /// If the [text] is empty, no action is taken. If the copy operation fails,
  /// a [SnackBar] with an error message is shown.
  void _copyToClipboard(BuildContext context, String text) async {
    if (text.isNotEmpty) {
      try {
        await Clipboard.setData(ClipboardData(text: text));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Copied to Clipboard!'),
            duration: Duration(milliseconds: 500),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(16),
            backgroundColor: Colors.teal,
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to copy to clipboard.')),
        );
      }
    }
  }
}