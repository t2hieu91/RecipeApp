import 'package:flutter/material.dart';

import '../constants.dart';

class CheckText extends StatelessWidget {
  const CheckText({
    Key? key,
    this.isValid = false,
    required this.title,
  }) : super(key: key);

  final bool isValid;
  final String title;

  @override
  Widget build(BuildContext context) {
    final iconPath = isValid
        ? 'assets/icons/ic_check_circle.png'
        : 'assets/icons/ic_uncheck_circle.png';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Image.asset(
                iconPath,
                height: 24,
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            TextSpan(
              text: "  ",
            ),
            TextSpan(
              text: title,
              style: TextStyle(
                fontSize: 15,
                color: isValid ? kTextColor : kSecondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
