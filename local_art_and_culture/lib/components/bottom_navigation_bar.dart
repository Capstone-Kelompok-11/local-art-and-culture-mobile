import 'package:flutter/material.dart';

class NavItemBuilder {
  Color iconColor = const Color(0xffB3B3B3);
  Color labelColor = const Color(0xffB3B3B3);

  BottomNavigationBarItem buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      backgroundColor: const Color(0xFFFFFFFF),
      icon: GestureDetector(
        onTap: () {
          _changeIconColor();
        },
        child: Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
      ),
      label: label,
    );
  }

  void _changeIconColor() {
    iconColor = const Color(0xFF3653B0);
  }
}
