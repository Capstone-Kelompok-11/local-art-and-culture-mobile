import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_art_and_culture/widget/app_bar_home.dart';
import 'package:local_art_and_culture/widget/button_fitur.dart';
import 'package:local_art_and_culture/widget/calender.dart';
import 'package:local_art_and_culture/widget/card.dart';
import 'package:local_art_and_culture/widget/card_event.dart';
import 'package:local_art_and_culture/widget/icon_filter.dart';
import 'package:local_art_and_culture/widget/news_card.dart';
import 'package:local_art_and_culture/widget/searchbar.dart';
import 'package:local_art_and_culture/widget/slider_home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NewsCard> newsCards = [];

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
                  padding: const EdgeInsets.only(
                    top: 64,
                    left: 24,
                    right: 24,
                    bottom: 28,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: CustomContainer(
                              profileImageUrl: 'assets/foto.jpg',
                              greetingText: 'Horas, Sule!',
                              locationText: 'Surabaya',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          const Expanded(
                            child: CustomSearchBar(
                              leadingIcon: Icon(Icons.search),
                            ),
                          ),
                          const SizedBox(width: 12),
                          CustomIconButton(
                            icon: const Icon(Icons.filter_list),
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      const Row(
                        children: [
                          Expanded(
                            child: CustomCalendar(),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: CustomImageSlider(),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: MyButtons(),
                          )
                        ],
                      )
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
                        offset: const Offset(0, 1),
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
                                    imagePath: 'assets/Banner 3.png',
                                    title: 'Workshop Ceramics for Beginner',
                                    label1: 'Festival Budaya',
                                    label2: 'Berbayar',
                                    date: '16-17 Okt 2023'));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
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
                              child: newsCards[
                                  index], // Tampilkan NewsCard dari API
                            );
                          },
                        ),
                      ),
                      // Contoh elemen tambahan di dalam SingleChildScrollView
                    ],
                  ),
                ),
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
                        height: 385, // Ubah tinggi sesuai kebutuhan
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: cardPadding,
                              child: RoundedImageCard(
                                imagePath: 'assets/dompet.jpg',
                                label: 'Fashion',
                                subtitle:
                                    'Dompet Wanita Series AMC Kulit Naga Asli',
                                title: 'Rp 80.000',
                                locationRating: "Surabaya",
                                starRating: 4.5,
                                terjual: '120',
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
                        height: 385, // Ubah tinggi sesuai kebutuhan
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: cardPadding,
                              child: RoundedImageCard(
                                imagePath: 'assets/dompet.jpg',
                                label: 'Fashion',
                                subtitle:
                                    'Dompet Wanita Series AMC Kulit Naga Asli',
                                title: 'Rp 80.000',
                                locationRating: "Surabaya",
                                starRating: 4.5,
                                terjual: '138',
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
        ),
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
