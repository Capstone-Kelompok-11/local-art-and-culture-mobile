import 'package:flutter/material.dart';
import 'package:local_art_and_culture/widget/app_bar_home.dart';
import 'package:local_art_and_culture/widget/card.dart';
import 'package:local_art_and_culture/widget/card_event.dart';
import 'package:local_art_and_culture/widget/news_card.dart';
import 'package:local_art_and_culture/widget/bottom_navigation_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NewsCard> newsCards = [];
  final NavItemBuilder navItemBuilder = NavItemBuilder();

  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    fetchNewsData(); // Ubah pemanggilan dari fetchData() menjadi fetchNewsData()
  }

  Future<void> fetchNewsData() async {
    try {
      NewsCard newsCard = const NewsCard(
        imagePath: '',
        title: '',
        date: '',
        content: '',
      ); // Buat instance dari NewsCard
      List<NewsCard> fetchedNewsCards = await newsCard
          .fetchData(); // Panggil metode fetchData() dari NewsCard

      setState(() {
        newsCards =
            fetchedNewsCards; // Perbarui newsCards dengan hasil fetch dari NewsCard
      });
    } catch (error) {
      // ignore: avoid_print
      print('Error fetching news: $error');
    }
  }

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
        appBar: const CustomAppBar(
          name: 'Sule',
          location: 'Surabaya',
        ),
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
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari...',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          onPressed: () {
                            // Tambahkan logika untuk menangani klik icon filter di sini
                          },
                        ),
                      ],
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
                    SizedBox(
                      height: 270, // Ubah tinggi sesuai kebutuhan
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5, // Gunakan panjang list newsCards
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child:
                                newsCards[index], // Tampilkan NewsCard dari API
                          );
                        },
                      ),
                    ),
                    // Contoh elemen tambahan di dalam SingleChildScrollView
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
                            'Terlaris di sekitarmu~',
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
              const SizedBox(height: 50),
            ],
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
          selectedItemColor: Colors.blue, // Warna terpilih
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
