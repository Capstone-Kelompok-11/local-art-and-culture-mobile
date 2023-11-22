import 'package:flutter/material.dart';

class NavItemBuilder {
  Color iconColor = Colors.grey;
  Color labelColor = Colors.grey;

  BottomNavigationBarItem buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      backgroundColor: const Color(0xFFFFFFFF),
      icon: GestureDetector(
        onTap: () {
          _changeIconColor(); // Panggil metode untuk mengubah warna ikon
        },
        child: Icon(
          icon,
          size: 24,
          color: iconColor,
        ),
      ),
      label: label,
    );
  }

  void _changeIconColor() {
    // Logika perubahan warna ikon saat ditekan
    iconColor =
        const Color(0xFF3653B0); // Ganti ke warna biru ketika ikon ditekan
  }
}
