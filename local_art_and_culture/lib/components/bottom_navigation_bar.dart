import 'package:flutter/material.dart';

class NavItemBuilder {
  Color iconColor = const Color(0xffB3B3B3);
  Color labelColor = const Color(0xffB3B3B3);

  BottomNavigationBarItem buildNavItem(IconData icon, String label,
      int currentIndex, int itemIndex, Function(int) onTap) {
    return BottomNavigationBarItem(
      backgroundColor: const Color(0xFFFFFFFF),
      icon: GestureDetector(
        onTap: () {
          onTap(itemIndex); // Panggil fungsi onTap dengan indeks item
        },
        child: Icon(
          icon,
          size: 30,
          color: currentIndex == itemIndex
              ? const Color(0xFF3653B0)
              : const Color(0xffB3B3B3),
        ),
      ),
      label: label,
    );
  }
}
