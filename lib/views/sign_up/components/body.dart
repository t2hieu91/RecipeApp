import 'package:flutter/material.dart';
import 'package:recipe_app/components/check_text.dart';
import 'package:recipe_app/components/custom_prefix_icon.dart';
import 'package:recipe_app/components/custom_suffix_icon.dart';
import 'package:recipe_app/components/default_button.dart';
import 'package:recipe_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kDefaultPadding * 5),
              Text(
                "Welcome!",
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
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Password must contain:",
                      style: TextStyle(
                        color: kThirtTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    CheckText(
                      title: "Atleast 6 characters",
                      isValid: true,
                    ),
                    CheckText(
                      title: "Contains a number",
                      isValid: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              DefaultButton(
                title: "Sign Up",
                onPress: () {},
              ),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
