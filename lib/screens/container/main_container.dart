import 'package:etiket_mobile/screens/main/event_screen.dart';
import 'package:etiket_mobile/screens/main/home_screen.dart';
import 'package:etiket_mobile/screens/main/profile_screen.dart';
import 'package:etiket_mobile/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int selectedScreen = 0;
  static final List<Widget> _widgetOptions = [
    const HomeScreen(name: "Sendiko",),
    const EventScreen(text: "Event",),
    const ProfileScreen(text: "Profile",)
  ];

  void onItemTap(int screen) {
    setState(() {
      selectedScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreen,
        onTap: onItemTap,
        elevation: 0,
        backgroundColor: Styles.tertiaryColor,
        selectedItemColor: Styles.onTertiaryColor,
        unselectedItemColor: Styles.onTertiaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled
            ),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled
            ),
            label: "Event"
          ),
          BottomNavigationBarItem(
            icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular
            ),
            activeIcon: Icon(
                FluentSystemIcons.ic_fluent_person_filled
            ),
            label: "Profile"
          )
        ]
      ),
    );
  }
}
