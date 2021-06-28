import 'package:flutter/material.dart';

class InfoFollowItem extends StatelessWidget {
  const InfoFollowItem({
    Key? key,
    required this.number,
    required this.title,
  }) : super(key: key);

  final String number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}
