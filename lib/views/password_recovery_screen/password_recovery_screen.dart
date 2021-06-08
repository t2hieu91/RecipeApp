import 'package:flutter/material.dart';

import './components/body.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  static String routeName = "/password_recovery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
