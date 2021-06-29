import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';

import '../../../constants.dart';
import './notification_single_item.dart';
import '../models/dummy_data.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final data = dummy_data;

  void _onPressFollow(IndexPath indexPath) {
    final item = data.values.toList()[indexPath.section][indexPath.index];
    setState(() {
      item.isFollow = !item.isFollow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GroupListView(
          sectionsCount: data.keys.toList().length,
          countOfItemInSection: (int section) =>
              data.values.toList()[section].length,
          groupHeaderBuilder: (ctx, section) => Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding),
            child: Text(
              data.keys.toList()[section],
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          itemBuilder: (ctx, indexPath) {
            final item =
                data.values.toList()[indexPath.section][indexPath.index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: NotificationSingleItem(
                userAvatarPath: item.userAvatarPath,
                userName: item.userName,
                itemDescription: item.itemDescription,
                isFollow: item.isFollow,
                onPressFollow: () => _onPressFollow(indexPath),
              ),
            );
          },
        ),
      ),
    );
  }
}
