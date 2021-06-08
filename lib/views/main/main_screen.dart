import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../components/icon_bottom_navigation_bar.dart';

import '../home_screen/home_screen.dart';
import '../upload_screen/upload_screen.dart';
import '../scan_screen/scan_screen.dart';
import '../notification_screen/notification_screen.dart';
import '../profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static String routeName = "/main";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

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
              iconPath: "assets/icons/ic_scan_bottom.png",
            ),
            activeIcon: IconBottomNavigationBar(
              iconPath: "assets/icons/ic_scan_bottom_selected.png",
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
