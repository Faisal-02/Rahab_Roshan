import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/Competitions/screens/competitions_screen.dart';
import 'package:rehab_roshan_project/features/arena/Screen/arena_screen.dart';
import 'package:rehab_roshan_project/features/arena/controllers/nav_bar_controller.dart';
import 'package:rehab_roshan_project/features/home/screens/home_screen.dart';
import 'package:rehab_roshan_project/features/profile/screens/profile_screen.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  final NavBarController _navBarController = NavBarController();
  final List<Widget> _widgetOption = [
    HomeScreen(),
    ArenaScreen(),
    CompetitionsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _navBarController.getScreensTitle(context, _currentIndex),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(height: 0),
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/inactive_home.png"),
                activeIcon: Image.asset("assets/images/active_home.png"),
                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/inactive_champion.png"),
                activeIcon: Image.asset("assets/images/active_champion.png"),
                label: "الميدان",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/inactive_award.png"),
                activeIcon: Image.asset("assets/images/active_award.png"),
                label: "بطولاتي",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/inactive_profile.png"),
                activeIcon: Image.asset("assets/images/active_profile.png"),
                label: "حسابي",
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ],
      ),
      body: _widgetOption[_currentIndex],
    );
  }
}
