import 'package:flutter/material.dart';
import '../../../constants.dart';

class ButtonFollow extends StatelessWidget {
  const ButtonFollow({
    Key? key,
    required this.isFollow,
    required this.onPress,
  }) : super(key: key);

  final bool isFollow;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final title = isFollow ? "Follow" : "Followed";
    final backgroundColor = isFollow ? kPrimaryColor : kFormColor;
    final textStyle = isFollow
        ? TextStyle(
            color: Colors.white,
            fontSize: 13,
          )
        : TextStyle(
            color: kSecondaryTextColor,
            fontSize: 13,
          );

    return SizedBox(
      height: 40.0,
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
