import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.pathIcon,
  }) : super(key: key);

  final String pathIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
        child: Image.asset(
          pathIcon,
          height: 24,
        ),
      ),
      highlightColor: Colors.transparent,
      // splashColor: Colors.transparent,
    );
  }
}
