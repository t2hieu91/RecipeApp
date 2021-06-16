import 'package:flutter/material.dart';
import '../../../constants.dart';

class HeaderCategoryItem extends StatelessWidget {
  const HeaderCategoryItem({
    Key? key,
    this.isActive = false,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final bool isActive;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isActive ? kPrimaryColor : kFormColor;

    final textStyle = isActive
        ? TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          )
        : TextStyle(
            color: kSecondaryTextColor,
            fontSize: 15,
          );

    return SizedBox(
      height: 44.0,
      child: TextButton(
        onPressed: onPress,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
          child: Text(
            title,
            style: textStyle,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.transparent,
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
      ),
    );
  }
}
