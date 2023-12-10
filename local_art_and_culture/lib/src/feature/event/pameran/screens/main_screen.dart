import 'package:flutter/material.dart';
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? Icons.home : Icons.home,
                    color: currentTab == 0 ? primaryBlue70Color : Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 0 ? primaryBlue70Color : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? Icons.event : Icons.event,
                    color: currentTab == 1 ? primaryBlue70Color : Colors.grey,
                  ),
                  Text(
                    "Event",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 1 ? primaryBlue70Color : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 2 ? Icons.event : Icons.event,
                    color: currentTab == 2 ? primaryBlue70Color : Colors.grey,
                  ),
                  Text(
                    "Product",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 2 ?primaryBlue70Color : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 3;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? Icons.person : Icons.person,
                    color: currentTab == 3 ? primaryBlue70Color : Colors.grey,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 3 ? primaryBlue70Color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}