import 'package:flutter/material.dart';
import '../../../constants.dart';

class HeaderTabbar extends StatelessWidget {
  const HeaderTabbar({
    Key? key,
  }) : super(key: key);

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
          labelStyle: headingTitleStyle,
          unselectedLabelColor: kSecondaryTextColor,
          unselectedLabelStyle: headingBodyStyle,
          tabs: [
            Tab(text: "Left"),
            Tab(text: "Right"),
          ],
          onTap: (index) {},
        ),
      ),
    );
  }
}
