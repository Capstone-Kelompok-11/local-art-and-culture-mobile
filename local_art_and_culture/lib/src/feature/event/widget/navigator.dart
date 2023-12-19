import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                onItemTapped(0); // Ganti dengan indeks yang sesuai
              },
            ),
            SizedBox(width: 20), // Spasi antara ikon
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                onItemTapped(1); // Ganti dengan indeks yang sesuai
              },
            ),
          ],
        ),
      ),
    );
  }
}
