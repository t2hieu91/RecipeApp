import 'package:flutter/material.dart';
import '../../../constants.dart';
import './button_follow.dart';

class NotificationSingleItem extends StatelessWidget {
  const NotificationSingleItem({
    Key? key,
    required this.userAvatarPath,
    required this.userName,
    required this.itemDescription,
    this.isFollow = false,
    required this.onPressFollow,
  }) : super(key: key);

  final String userAvatarPath;
  final String userName;
  final String itemDescription;
  final bool isFollow;
  final VoidCallback onPressFollow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kDefaultPadding * 3,
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset(userAvatarPath),
            radius: 30.0,
          ),
          SizedBox(width: kDefaultPadding),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                itemDescription,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          Spacer(),
          ButtonFollow(
            isFollow: isFollow,
            onPress: onPressFollow,
          ),
        ],
      ),
    );
  }
}
