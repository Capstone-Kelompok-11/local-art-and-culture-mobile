import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/bottom_navigation_bar.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/event_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    EvenScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  get primaryBlue70Color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: 1,
          onItemTapped: (index) {
            if (index == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/product');
            } else if (index == 3) {
              Navigator.pushNamed(context, '/profile');
            }
          }),
      body: screens[currentTab],
    );
  }
}
