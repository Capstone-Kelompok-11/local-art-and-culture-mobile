import 'package:flutter/material.dart';
import 'package:local_art_and_culture/widget/card.dart';
import 'package:local_art_and_culture/widget/card_event.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: 24, color: Colors.grey),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    const cardPadding = EdgeInsets.all(10.0); // Tetapkan padding untuk kartu

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                padding: const EdgeInsets.fromLTRB(15.0, 31.0, 0.0, 31.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rekomendasi Event',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Tindakan ketika "Lihat Semua" ditekan
                            },
                            child: const Text(
                              'Lihat Semua',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 335, // Ubah tinggi sesuai kebutuhan
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const Padding(
                              padding: cardPadding,
                              child: CardEvent(
                                  imagePath: 'assets/banner 3.png',
                                  title: 'Workshop Ceramics for Beginner',
                                  date: '16-17 Okt 2023'));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                padding: const EdgeInsets.fromLTRB(15.0, 31.0, 0.0, 31.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Artikel Terkini',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Tindakan ketika "Lihat Semua" ditekan
                            },
                            child: const Text(
                              'Lihat Semua',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Contoh elemen tambahan di dalam SingleChildScrollView
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                padding: const EdgeInsets.fromLTRB(15.0, 31.0, 0.0, 31.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rekomendasi Produk',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Tindakan ketika "Lihat Semua" ditekan
                            },
                            child: const Text(
                              'Lihat Semua',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 350, // Ubah tinggi sesuai kebutuhan
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: cardPadding,
                            child: RoundedImageCard(
                              imagePath:
                                  'assets/dompet_kulit_lokal_wanita_main.jpg',
                              subtitle:
                                  'Dompet Wanita Series AMC Kulit Naga Asli',
                              title: 'Rp 80.000',
                              locationRating: "Surabaya",
                              starRating: 4.5,
                            ),
                          );
                        },
                      ),
                    ),
                    // Contoh elemen tambahan di dalam SingleChildScrollView
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Terlarid di sekitarmu~',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Tindakan ketika "Lihat Semua" ditekan
                            },
                            child: const Text(
                              'Lihat Semua',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 350, // Ubah tinggi sesuai kebutuhan
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: cardPadding,
                            child: RoundedImageCard(
                              imagePath:
                                  'assets/dompet_kulit_lokal_wanita_main.jpg',
                              subtitle:
                                  'Dompet Wanita Series AMC Kulit Naga Asli',
                              title: 'Rp 80.000',
                              locationRating: "Surabaya",
                              starRating: 4.5,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            _buildNavItem(Icons.home, "Home"),
            _buildNavItem(Icons.search, 'Search'),
            _buildNavItem(Icons.favorite, 'Favorite'),
            _buildNavItem(Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }
}
