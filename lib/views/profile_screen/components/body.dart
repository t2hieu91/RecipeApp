import 'package:flutter/material.dart';
import 'package:recipe_app/views/home_screen/components/content_view_item.dart';
import 'package:recipe_app/views/home_screen/models/dummy_data.dart';
import '../../../constants.dart';

import '../../../views/home_screen/components/tabbar_view.dart';
import '../../../views/home_screen/components/header_tabbar.dart';

import './info_follow_view.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = dummy_category;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kDefaultPadding * 17,
            actions: [
              SizedBox(
                width: kDefaultPadding * 3,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/ic_share.png",
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Column(
                  children: [
                    SizedBox(height: kDefaultPadding * 3),
                    CircleAvatar(
                      child: Image.asset("assets/images/img_my_avatar.png"),
                      radius: 50,
                    ),
                    SizedBox(height: kDefaultPadding * 1.5),
                    Text(
                      "Choirui Syafril",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: kDefaultPadding * 1.5),
                    InfoFollowView(),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  color: kFormColor,
                  height: 8,
                ),
                HeaderTabbar(
                  item1: "Recipes",
                  item2: "Liked",
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (ctx, index) => Padding(
                padding: const EdgeInsets.fromLTRB(kDefaultPadding,
                    kDefaultPadding, kDefaultPadding, kDefaultPadding),
                child: ContentViewItem(
                  userAvatarPath: data[index].userAvatarPath,
                  userName: data[index].userName,
                  itemImagePath: data[index].itemImagePath,
                  itemName: data[index].itemName,
                  itemDescription: data[index].itemDescription,
                  isFavorite: data[index].isFavorite,
                  onPressFavorite: () {
                    // setState(() {
                    //   data[index].isFavorite = !data[index].isFavorite;
                    // });
                  },
                  onPress: () {},
                ),
              ),
              childCount: data.length,
            ),
          )
        ],
      ),
    );
  }
}
