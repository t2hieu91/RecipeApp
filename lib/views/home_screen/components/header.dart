import 'package:flutter/material.dart';
import '../../../constants.dart';
import './header_search.dart';
import './header_category.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: HeaderSearch(),
          ),
          HeaderCategory(),
        ],
      ),
    );
  }
}
