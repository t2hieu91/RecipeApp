import 'package:flutter/material.dart';

import '../../../constants.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({
    Key? key,
  }) : super(key: key);

  @override
  _VerificationFormState createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 72,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            showCursor: false,
            style: TextStyle(
              fontSize: 34,
              color: kTextColor,
            ),
            decoration: verificationInputDecoration,
            onChanged: (value) {},
          ),
        ),
        SizedBox(
          width: 72,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            showCursor: false,
            style: TextStyle(
              fontSize: 34,
              color: kTextColor,
            ),
            decoration: verificationInputDecoration,
            onChanged: (value) {},
          ),
        ),
        SizedBox(
          width: 72,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            showCursor: false,
            style: TextStyle(
              fontSize: 34,
              color: kTextColor,
            ),
            decoration: verificationInputDecoration,
            onChanged: (value) {},
          ),
        ),
        SizedBox(
          width: 72,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            showCursor: false,
            style: TextStyle(
              fontSize: 34,
              color: kTextColor,
            ),
            decoration: verificationInputDecoration,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
