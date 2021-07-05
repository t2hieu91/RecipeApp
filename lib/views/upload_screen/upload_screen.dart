import 'package:flutter/material.dart';
import './components/body.dart';

class UploadScreen extends StatelessWidget {
  static String routeName = "/upload";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
