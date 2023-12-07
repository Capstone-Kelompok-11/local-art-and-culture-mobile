import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

<<<<<<< HEAD:local_art_and_culture/lib/widget/bottom_navigation_bar.dart
class CustomBottomNavItem extends StatelessWidget {
  final String title;
  final Widget iconWidget; // Mengubah tipe menjadi Widget

  const CustomBottomNavItem({
    Key? key,
    required this.title,
    required this.iconWidget, // Mengubah tipe menjadi Widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: iconWidget, // Menggunakan iconWidget sebagai child
          ),
          const SizedBox(height: 2),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w500,
              height: 0.12,
            ),
          ),
        ],

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
>>>>>>> develop:local_art_and_culture/lib/components/bottom_navigation_bar.dart
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 82,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x33111111),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBottomNavItem(
            title: 'Home',
            iconWidget: SvgPicture.asset(
              'assets/svg/Home.svg',
              // ignore: deprecated_member_use
              color: Colors.black,
            ),
          ),
          CustomBottomNavItem(
            title: 'Event',
            iconWidget: SvgPicture.asset(
              'assets/svg/event.svg',
              // ignore: deprecated_member_use
              color: Colors.black,
            ),
          ),
          CustomBottomNavItem(
            title: 'Product',
            iconWidget: SvgPicture.asset(
              'assets/svg/Group.svg',
              // ignore: deprecated_member_use
              color: Colors.black,
            ),
          ),
          CustomBottomNavItem(
            title: 'Profile',
            iconWidget: SvgPicture.asset(
              'assets/svg/person.svg',
              // ignore: deprecated_member_use
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  void _changeIconColor() {
    iconColor = const Color(0xFF3653B0);
  }
}
      ),);}}