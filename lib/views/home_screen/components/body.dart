import 'package:flutter/material.dart';
import '../../../constants.dart';
import './header.dart';
import './header_tabbar.dart';
import './tabbar_view.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Header(),
          Container(
            color: kFormColor,
            height: 8,
          ),
          // the tab bar with two items
          HeaderTabbar(),
          // create widgets for each tab bar here
          TabbarView(),
        ],
      ),
    );
  }
}
