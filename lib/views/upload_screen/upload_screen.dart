import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  static String routeName = "/upload";
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Upload Screen"),
      ),
    );
  }
}
