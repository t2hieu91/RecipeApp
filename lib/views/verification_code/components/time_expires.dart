import 'package:flutter/material.dart';

import '../../../constants.dart';

class TimeExpires extends StatelessWidget {
  const TimeExpires({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "code expires in: ",
          style: TextStyle(color: kTextColor),
        ),
        Text(
          "03:12",
          style: TextStyle(color: kSecondaryColor),
        ),
      ],
    );
  }
}
