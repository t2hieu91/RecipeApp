import 'package:flutter/material.dart';
import './components/body.dart';

class VerificationCodeScreen extends StatelessWidget {
  static String routeName = "/verification_code";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
