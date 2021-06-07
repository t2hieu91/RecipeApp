import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_prefix_icon.dart';
import 'package:recipe_app/components/custom_suffix_icon.dart';
import 'package:recipe_app/components/default_button.dart';
import 'package:recipe_app/components/other_button.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/views/main/main_screen.dart';
import 'package:recipe_app/views/password_recovery/password_recovery_screen.dart';
import 'package:recipe_app/views/sign_up/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding * 5),
              Text(
                "Welcome Back!",
                style: headingTitleStyle,
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                "Please enter your account here",
                style: headingBodyStyle,
              ),
              SizedBox(height: kDefaultPadding * 2),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email or phone number",
                  prefixIcon: CustomPrefixIcon(
                    pathIcon: "assets/icons/ic_email.png",
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: CustomPrefixIcon(
                    pathIcon: "assets/icons/ic_password.png",
                  ),
                  suffixIcon: CustomSuffixIcon(
                    pathIcon: "assets/icons/ic_show.png",
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, PasswordRecoveryScreen.routeName);
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: kTextColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: kDefaultPadding * 3),
              DefaultButton(
                title: "Login",
                onPress: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, MainScreen.routeName, (route) => false);
                },
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                "Or continue with",
                style: headingBodyStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: kDefaultPadding),
              OrtherButton(
                title: "Google",
                onPress: () {},
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have any account?",
                    style: headingBodyStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
