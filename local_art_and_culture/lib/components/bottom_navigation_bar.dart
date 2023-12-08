import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  Widget _buildIcon(IconData icon, String label, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 23,
            child: Icon(
              icon,
              size: 30,
              color: isSelected
                  ? const Color(0xff3653B0)
                  : const Color(0xffB3B3B3),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: GoogleFonts.plusJakartaSansTextTheme(),
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          onItemTapped(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, 'Home', selectedIndex == 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.event, 'Event', selectedIndex == 1),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.storefront, 'Product', selectedIndex == 2),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, 'Profile', selectedIndex == 3),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff3653B0),
        unselectedItemColor: const Color(0xffB3B3B3),
      ),
    );
  }
}
