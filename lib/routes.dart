import 'package:flutter/material.dart';
import 'package:recipe_app/views/home_screen/home_screen.dart';
import 'package:recipe_app/views/main/main_screen.dart';
import 'package:recipe_app/views/new_password/new_password_screen.dart';
import 'package:recipe_app/views/notification_screen/notification_screen.dart';
import 'package:recipe_app/views/onboarding/on_boarding_screen.dart';
import 'package:recipe_app/views/password_recovery/password_recovery_screen.dart';
import 'package:recipe_app/views/profile_screen/profile_screen.dart';
import 'package:recipe_app/views/scan_screen/scan_screen.dart';
import 'package:recipe_app/views/sign_in/sign_in_screen.dart';
import 'package:recipe_app/views/sign_up/sign_up_screen.dart';
import 'package:recipe_app/views/upload_screen/upload_screen.dart';
import 'package:recipe_app/views/verification_code/verification_code_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (ctx) => OnBoardingScreen(),
  SignInScreen.routeName: (ctx) => SignInScreen(),
  SignUpScreen.routeName: (ctx) => SignUpScreen(),
  PasswordRecoveryScreen.routeName: (ctx) => PasswordRecoveryScreen(),
  VerificationCodeScreen.routeName: (ctx) => VerificationCodeScreen(),
  NewPasswordScreen.routeName: (ctx) => NewPasswordScreen(),
  MainScreen.routeName: (ctx) => MainScreen(),
  HomeScreen.routeName: (ctx) => HomeScreen(),
  UploadScreen.routeName: (ctx) => UploadScreen(),
  ScanScreen.routeName: (ctx) => ScanScreen(),
  NotificationScreen.routeName: (ctx) => NotificationScreen(),
  ProfileScreen.routeName: (ctx) => ProfileScreen(),
};
