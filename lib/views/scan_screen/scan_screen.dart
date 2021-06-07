import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  static String routeName = "/scan";
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Scan Screen"),
      ),
    );
  }
}
