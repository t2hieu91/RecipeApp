import 'package:flutter/material.dart';
import './content_view_item.dart';
import '../models/dummy_data.dart';

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  var data = dummy_category;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      itemCount: data.length,
      itemBuilder: (ctx, index) => ContentViewItem(
        userAvatarPath: data[index].userAvatarPath,
        userName: data[index].userName,
        itemImagePath: data[index].itemImagePath,
        itemName: data[index].itemName,
        itemDescription: data[index].itemDescription,
        isFavorite: data[index].isFavorite,
        onPressFavorite: () {
          setState(() {
            data[index].isFavorite = !data[index].isFavorite;
          });
        },
        onPress: () {},
      ),
    );
  }
}
