import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: kDefaultPadding * 3,
                  child: Container(
                    color: kPrimaryColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
