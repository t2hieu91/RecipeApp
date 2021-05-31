import 'package:flutter/material.dart';

import '../../../constants.dart';

class GrayButton extends StatelessWidget {
  const GrayButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: kSecondaryTextColor,
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(color: kSecondaryTextColor, fontSize: 17),
        ),
      ),
    );
  }
}
