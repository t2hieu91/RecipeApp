import 'package:flutter/material.dart';
import '../../../constants.dart';

class ScanOption extends StatelessWidget {
  const ScanOption({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String iconPath;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 165,
      decoration: BoxDecoration(
        border: Border.all(
          color: kOutlineColor,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: onPress,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              iconPath,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
