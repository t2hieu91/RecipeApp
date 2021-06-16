import 'package:flutter/material.dart';
import '../../../constants.dart';
import './header.dart';

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
        ],
      ),
    );
  }
}
