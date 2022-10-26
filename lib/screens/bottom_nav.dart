import 'package:etiket_mobile/screens/event_screen.dart';
import 'package:etiket_mobile/screens/home_screen.dart';
import 'package:etiket_mobile/screens/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedScreen = 0;
  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const EventScreen(),
    const ProfileScreen()
  ];

  void onItemTap(int screen) {
    setState(() {
      selectedScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TIX4U"),
      ),
      body: Center(
        child: _widgetOptions[selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedScreen,
          onTap: onItemTap,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_calendar_day_filled),
                activeIcon:
                    Icon(FluentSystemIcons.ic_fluent_calendar_day_filled),
                label: "Event"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile")
          ]),
    );
  }
}
