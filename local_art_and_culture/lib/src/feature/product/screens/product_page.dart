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
  int _selectedIndex = 2;
  final NavItemBuilder navItemBuilder = NavItemBuilder();
  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        // Navigasi ke halaman Home
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        // Navigasi ke halaman Event
        Navigator.pushReplacementNamed(context, '/event');
        break;
      case 2:
        // Navigasi ke halaman Product
        Navigator.pushReplacementNamed(context, '/product');
        break;
      case 3:
        // Navigasi ke halaman Profile
        Navigator.pushReplacementNamed(context, '/profile');
        break;
      default:
        break;
    }
  }

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
          navItemBuilder.buildNavItem(
              Icons.home, 'Home', _selectedIndex, 0, _onItemTapped),
          navItemBuilder.buildNavItem(
              Icons.event, 'Event', _selectedIndex, 1, _onItemTapped),
          navItemBuilder.buildNavItem(
              Icons.storefront, 'Product', _selectedIndex, 2, _onItemTapped),
          navItemBuilder.buildNavItem(
              Icons.person, 'Profile', _selectedIndex, 3, _onItemTapped),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff3653B0), // Warna ikon yang terpilih
        unselectedItemColor: const Color.fromARGB(
            255, 118, 114, 114), // Warna ikon yang tidak terpilih
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
