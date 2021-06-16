import 'package:flutter/material.dart';
import 'package:recipe_app/components/default_button.dart';
import 'package:recipe_app/views/new_password_screen/new_password_screen.dart';
import 'package:recipe_app/views/verification_code/components/time_expires.dart';
import 'package:recipe_app/views/verification_code/components/verification_form.dart';
import './gray_button.dart';
import '../../../constants.dart';

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
                "Check your email",
                style: headingTitleStyle,
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                "We.ve sent the code to your email",
                style: headingBodyStyle,
              ),
              SizedBox(height: kDefaultPadding * 2),
              VerificationForm(),
              SizedBox(height: kDefaultPadding * 3),
              TimeExpires(),
              SizedBox(height: kDefaultPadding),
              DefaultButton(
                title: "Verify",
                onPress: () {
                  Navigator.pushNamed(context, NewPasswordScreen.routeName);
                },
              ),
              SizedBox(height: kDefaultPadding),
              GrayButton(
                title: "Send again",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
