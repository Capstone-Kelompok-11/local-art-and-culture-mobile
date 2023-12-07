import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/bottom_navigation_bar.dart';
import 'package:local_art_and_culture/components/search_bar.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/button_filter.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/card_product.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({Key? key}) : super(key: key);

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  bool isPressed = false;
  int _selectedIndex = 0;
  final NavItemBuilder navItemBuilder = NavItemBuilder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            SizedBox(height: 60),
            SearchHeader(),
            SizedBox(width: 10),
            SizedBox(height: 20),
            ButtonFilter(),
            CardProducts(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          navItemBuilder.buildNavItem(Icons.home, 'Home'),
          navItemBuilder.buildNavItem(Icons.event, 'Event'),
          navItemBuilder.buildNavItem(Icons.storefront, 'Product'),
          navItemBuilder.buildNavItem(Icons.person, 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff3653B0),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/event');
              break;
            case 2:
              break;
            case 3:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
