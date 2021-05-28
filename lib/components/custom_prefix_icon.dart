import 'package:flutter/material.dart';

class CustomPrefixIcon extends StatelessWidget {
  const CustomPrefixIcon({
    Key? key,
    required this.pathIcon,
  }) : super(key: key);

  final String pathIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
      child: Image.asset(
        pathIcon,
        height: 24,
      ),
    );
  }
}
