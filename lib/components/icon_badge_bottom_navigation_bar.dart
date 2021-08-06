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
      clipBehavior: Clip.none,
      children: [
        IconBottomNavigationBar(
          iconPath: iconPath,
        ),
        if (number.isNotEmpty && int.parse(number) > 0)
          Positioned(
            right: -10,
            top: -5,
            child: Container(
              padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              constraints: BoxConstraints(
                minWidth: 18,
                minHeight: 18,
              ),
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
