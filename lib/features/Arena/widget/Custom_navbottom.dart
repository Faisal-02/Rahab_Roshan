import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/Arena/Screen/Arena_Screen.dart';
// import 'package:rehab_roshan_project/features/heroics/Screen/heroics_screen.dart';
import 'package:rehab_roshan_project/features/home/screens/home_screen.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  List<Widget> _widgetOption = [
    HomeScreen(),
    ArenaScreen(),
    // HeroicsScreen(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          unselectedItemColor: Color(0xFFB8B8B8),
          selectedItemColor: Color(0xFF554C83),
          backgroundColor: Colors.white,
        ),
        body: _widgetOption[_currentIndex],
      ),
    );
  }
}
