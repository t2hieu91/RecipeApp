import 'package:flutter/material.dart';
import 'package:recipe_app/views/new_password/new_password_screen.dart';
import 'package:recipe_app/views/onboarding/on_boarding_screen.dart';
import 'package:recipe_app/views/password_recovery/password_recovery_screen.dart';
import 'package:recipe_app/views/sign_in/sign_in_screen.dart';
import 'package:recipe_app/views/sign_up/sign_up_screen.dart';
import 'package:recipe_app/views/verification_code/verification_code_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (ctx) => OnBoardingScreen(),
  SignInScreen.routeName: (ctx) => SignInScreen(),
  SignUpScreen.routeName: (ctx) => SignUpScreen(),
  PasswordRecoveryScreen.routeName: (ctx) => PasswordRecoveryScreen(),
  VerificationCodeScreen.routeName: (ctx) => VerificationCodeScreen(),
  NewPasswordScreen.routeName: (ctx) => NewPasswordScreen(),
};
