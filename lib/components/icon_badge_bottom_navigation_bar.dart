import 'package:flutter/material.dart';

import '../constants.dart';
import './icon_bottom_navigation_bar.dart';

class IconBadgeBottomNavigationBar extends StatelessWidget {
  const IconBadgeBottomNavigationBar({
    Key? key,
    required this.iconPath,
    required this.number,
  }) : super(key: key);

  final String iconPath;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconBottomNavigationBar(
          iconPath: iconPath,
        ),
        if (number.isNotEmpty && int.parse(number) > 0)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              // padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              constraints: BoxConstraints(
                minWidth: 14,
                minHeight: 14,
              ),
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
