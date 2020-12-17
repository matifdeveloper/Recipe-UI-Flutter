import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      inactiveIconColor: Colors.redAccent,
      activeIconColor: Colors.white,
      circleColor: Colors.red,
      textColor: Colors.redAccent,
      tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        TabData(iconData: Icons.fastfood, title: "Recipe"),
        TabData(iconData: Icons.subscriptions, title: "Subscription"),
        TabData(iconData: Icons.settings, title: "Settings"),
      ],
      onTabChangedListener: (position) {
        setState(() {
          selectedIndex = position;
        });
      },
    );
  }
}
