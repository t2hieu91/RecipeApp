import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_prefix_icon.dart';
import 'package:recipe_app/components/default_button.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/views/verification_code/verification_code_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kDefaultPadding * 5),
              Text(
                "Password recovery",
                style: headingTitleStyle,
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                "Enter your email to recover your password",
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
              SizedBox(height: kDefaultPadding * 2),
              DefaultButton(
                title: "Sign In",
                onPress: () {
                  Navigator.pushNamed(
                      context, VerificationCodeScreen.routeName);
                },
              ),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
