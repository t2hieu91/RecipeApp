import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kDefaultPadding * 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style: Theme.of(context).textTheme.headline5,
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(left: 0, right: 20),
              ),
            ),
          ),
          Text(
            "1 / 2",
            style: headingNumberStyle,
          ),
        ],
      ),
    );
  }
}
