import 'package:flutter/material.dart';
import 'package:recipe_app/routes.dart';
import 'package:recipe_app/views/onboarding/on_boarding_screen.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kSecondaryTextColor),
        ),
      ),
      initialRoute: OnBoardingScreen.routeName,
      routes: routes,
    );
  }
}
