import 'package:flutter/material.dart';
import '../../../constants.dart';

class EnterFoodNameTextField extends StatelessWidget {
  const EnterFoodNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter food name",
        contentPadding: EdgeInsets.fromLTRB(
          kDefaultPadding * 1.5,
          kDefaultPadding,
          0,
          kDefaultPadding,
        ),
      ),
    );
  }
}
