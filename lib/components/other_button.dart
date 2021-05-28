import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class OrtherButton extends StatelessWidget {
  const OrtherButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        width: double.infinity,
        child: TextButton.icon(
          onPressed: onPress,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(kSignInButtonColor),
          ),
          icon: Image.asset(
            "assets/icons/ic_google.png",
            height: 24,
          ),
          label: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ));
  }
}
