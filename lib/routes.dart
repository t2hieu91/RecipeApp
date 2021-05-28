import 'package:flutter/material.dart';
import 'package:recipe_app/views/onboarding/on_boarding_screen.dart';
import 'package:recipe_app/views/sign_in/sign_in_screen.dart';
import 'package:recipe_app/views/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (ctx) => OnBoardingScreen(),
  SignInScreen.routeName: (ctx) => SignInScreen(),
  SignUpScreen.routeName: (ctx) => SignUpScreen(),
};
