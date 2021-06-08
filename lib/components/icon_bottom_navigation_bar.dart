import 'package:flutter/material.dart';

class IconBottomNavigationBar extends StatelessWidget {
  const IconBottomNavigationBar({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconPath,
      width: 24.0,
      height: 24.0,
    );
  }
}
