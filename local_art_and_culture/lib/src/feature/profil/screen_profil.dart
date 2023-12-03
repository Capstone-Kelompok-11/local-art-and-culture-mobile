import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/profil_akun.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/profil_gambar.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const cardPadding = EdgeInsets.all(10.0); // Tetapkan padding untuk kartu

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.fromLTRB(15.0, 31.0, 0.0, 31.0),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ProfileContainer()],
                      ),
                    ),

                    // Contoh elemen tambahan di dalam SingleChildScrollView
                  ],
                ),
              ),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/home.svg',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/event.svg',
              ),
              label: 'Event',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/Group.svg',
              ),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/person.svg',
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
