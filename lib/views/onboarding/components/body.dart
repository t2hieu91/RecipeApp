import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/views/sign_in/sign_in_screen.dart';
import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/images/img_onboarding.png',
                height: 400,
                // fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    Text(
                      "Start Cooking",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Let’s join our community \nto cook better food!",
                      style: TextStyle(
                        fontSize: 17,
                        color: kSecondaryTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    DefaultButton(
                      title: "Get Started",
                      onPress: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
