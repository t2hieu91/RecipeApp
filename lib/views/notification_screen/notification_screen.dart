import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification";
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Notification Screen"),
      ),
    );
  }
}
