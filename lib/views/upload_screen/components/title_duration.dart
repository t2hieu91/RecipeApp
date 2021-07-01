import 'package:flutter/material.dart';

class TitleDuration extends StatelessWidget {
  const TitleDuration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Cooking Duration",
            style: Theme.of(context).textTheme.headline2,
          ),
          TextSpan(
            text: " (in minutes)",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
