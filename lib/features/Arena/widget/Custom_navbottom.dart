import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/Arena/controllers/nav_bar_controller.dart';
import 'package:rehab_roshan_project/features/Competitions/screens/competitions_screen.dart';
import 'package:rehab_roshan_project/features/arena/Screen/Arena_Screen.dart';
import 'package:rehab_roshan_project/features/event_details/screens/championship_details_screen.dart';
// import 'package:rehab_roshan_project/features/heroics/Screen/heroics_screen.dart';
import 'package:rehab_roshan_project/features/profile/screens/profile_screen.dart';

// import 'package:rehab_roshan_project/features/test_code/test_screen.dart';
class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  final NavBarController _navBarController = NavBarController();
  final List<Widget> _widgetOption = [
    ChampionshipDetailsScreen(),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "الميدان"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "بطولاتي"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "حسابي"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _widgetOption[_currentIndex],
    );
  }
}
