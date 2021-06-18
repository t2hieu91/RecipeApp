import 'package:flutter/material.dart';
import './info_follow_item.dart';

class InfoFollowView extends StatelessWidget {
  const InfoFollowView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InfoFollowItem(number: "32", title: "Recipes"),
        InfoFollowItem(number: "782", title: "Following"),
        InfoFollowItem(number: "1.278", title: "Followers"),
      ],
    );
  }
}
