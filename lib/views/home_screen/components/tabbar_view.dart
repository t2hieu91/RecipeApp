import 'package:flutter/material.dart';

import './content_view.dart';

class TabbarView extends StatelessWidget {
  const TabbarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          // first tab bar view widget
          ContentView(),
          // second tab bar viiew widget
          ContentView(),
        ],
      ),
    );
  }
}
