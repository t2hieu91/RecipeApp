import 'package:flutter/material.dart';
import '../../../constants.dart';

class ContentViewItem extends StatelessWidget {
  const ContentViewItem({
    Key? key,
    required this.userAvatarPath,
    required this.userName,
    required this.itemImagePath,
    required this.itemName,
    required this.itemDescription,
    required this.onPressFavorite,
    required this.onPress,
    this.isFavorite = false,
  }) : super(key: key);

  final String userAvatarPath;
  final String userName;
  final String itemImagePath;
  final String itemName;
  final String itemDescription;
  final bool isFavorite;
  final VoidCallback onPressFavorite;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final iconFavorite = isFavorite
        ? "assets/icons/ic_favorite_heart_selected.png"
        : "assets/icons/ic_favorite_heart.png";

    return TextButton(
      onPressed: onPress,
      child: GridTile(
        header: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                userAvatarPath,
                height: 31,
                width: 31,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10),
            Text(
              userName,
              style: TextStyle(color: kTextColor),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  itemImagePath,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: onPressFavorite,
                  icon: Image.asset(
                    iconFavorite,
                    height: 32,
                    width: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
        footer: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemName,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            Text(
              itemDescription,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
