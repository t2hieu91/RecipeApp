import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../components/icon_bottom_navigation_bar.dart';
import '../../constants.dart';

import '../home_screen/home_screen.dart';
import '../upload_screen/upload_screen.dart';
import '../scan_screen/scan_screen.dart';
import '../notification_screen/notification_screen.dart';
import '../profile_screen/profile_screen.dart';

import './components/scan_option.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static String routeName = "/main";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final _floatButtonIndex = 2;

  final List<Widget> _screens = [
    HomeScreen(),
    UploadScreen(),
    ScanScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTabFloatingActionButton() {
    setState(() {
      _currentIndex = _floatButtonIndex;
    });
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) => Container(
        height: (MediaQuery.of(context).size.height / 2) - 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Text(
                "Choose one option",
                style: headingTitleStyle,
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScanOption(
                    iconPath: "assets/images/img_food.png",
                    title: "Food",
                    onPress: () {},
                  ),
                  ScanOption(
                    iconPath: "assets/images/img_ingredient.png",
                    title: "Ingredient",
                    onPress: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _screens[_currentIndex],
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: _screens[_currentIndex],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: IconButton(
          onPressed: () =>
              _showModalBottomSheet(context), //_onTabFloatingActionButton,
          iconSize: 56.0,
          icon: Image.asset("assets/icons/ic_scan_bottom_selected.png"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        selectedFontSize: 13.0,
        items: [
          BottomNavigationBarItem(
            icon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_home_bottom.png",
            ),
            activeIcon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_home_bottom_selected.png",
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_upload_bottom.png",
            ),
            activeIcon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_upload_bottom_selected.png",
            ),
            label: "Upload",
          ),
          BottomNavigationBarItem(
            icon: IconBottomNavigationBar(
              iconPath: "",
            ),
            activeIcon: IconBottomNavigationBar(
              iconPath: "",
            ),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_notification_bottom.png",
            ),
            activeIcon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_notification_bottom_selected.png",
            ),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_profile_bottom.png",
            ),
            activeIcon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_profile_bottom_selected.png",
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
