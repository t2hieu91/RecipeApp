import 'package:flutter/material.dart';
import '../../../constants.dart';

class HeaderTabbar extends StatelessWidget {
  const HeaderTabbar({
    Key? key,
    required this.item1,
    required this.item2,
  }) : super(key: key);

  final String item1;
  final String item2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: AppBar(
        elevation: 1,
        bottom: TabBar(
          indicatorWeight: 3,
          indicatorColor: kPrimaryColor,
          labelColor: kTextColor,
          labelStyle: Theme.of(context).textTheme.headline2,
          unselectedLabelColor: kSecondaryTextColor,
          unselectedLabelStyle: headingBodyStyle,
          tabs: [
            Tab(text: item1),
            Tab(text: item2),
          ],
          onTap: (index) {},
        ),
      ),
    );
  }
}
