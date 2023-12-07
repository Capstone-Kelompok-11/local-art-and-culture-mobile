import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_art_and_culture/components/bottom_navigation_bar.dart';

import 'package:local_art_and_culture/src/feature/profil/widget/profil_akun.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/profil_gambar.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/profil_konten.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int _selectedIndex = 3;
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
    // Tetapkan padding untuk kartu

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Jika ingin menambahkan judul atau ikon di sini
                          ],
                        ),
                      ),
                      // Tambahkan ProfileContainer di sini
                      ProfileContainer(
                        profileName: 'profileName',
                        email: 'email',
                        imageUrl: 'assets/foto.jpg',
                        // Atur lebar container di sini
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Jika ingin menambahkan judul atau ikon di sini
                          ],
                        ),
                      ),
                      // Tambahkan ProfileContainer di sini
                      AccountSection()
                      // Contoh elemen tambahan di dalam SingleChildScrollView
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Jika ingin menambahkan judul atau ikon di sini
                          ],
                        ),
                      ),
                      // Tambahkan ProfileContainer di sini
                      KontenSection()
                      // Contoh elemen tambahan di dalam SingleChildScrollView
                    ],
                  ),
                ),
              ],
            ),
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
          selectedItemColor: Colors.blue,
          unselectedItemColor: const Color.fromARGB(255, 134, 132, 132),
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
