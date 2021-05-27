import 'package:flutter/material.dart';

import './components/body.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = "/on_boarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
