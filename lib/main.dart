import 'package:flutter/material.dart';
import 'package:recipe_app/routes.dart';
import 'package:recipe_app/theme.dart';
import 'package:recipe_app/views/onboarding_screen/on_boarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: theme(),
        initialRoute: OnBoardingScreen.routeName,
        routes: routes,
      ),
    );
  }
}
