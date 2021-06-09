import 'package:flutter/material.dart';
import '../../../constants.dart';
import './header_category_item.dart';

class HeaderCategory extends StatefulWidget {
  const HeaderCategory({
    Key? key,
  }) : super(key: key);

  @override
  _HeaderCategoryState createState() => _HeaderCategoryState();
}

class _HeaderCategoryState extends State<HeaderCategory> {
  final _items = [
    "All",
    "Food",
    "Drink",
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kDefaultPadding * 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: Theme.of(context).textTheme.headline2,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _items.length,
              itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.only(
                  right: kDefaultPadding / 1.5,
                  top: kDefaultPadding / 1.5,
                  bottom: kDefaultPadding,
                ),
                child: HeaderCategoryItem(
                  isActive: _currentIndex == index,
                  title: _items[index],
                  onPress: () {
                    if (_currentIndex != index)
                      setState(() {
                        _currentIndex = index;
                      });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
