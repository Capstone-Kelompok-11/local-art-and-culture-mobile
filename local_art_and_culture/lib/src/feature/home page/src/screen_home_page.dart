import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/bottom_navigation_bar.dart';
import 'package:local_art_and_culture/src/feature/article/ui/article_list.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/app_bar_home.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/button_fitur.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/calender.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/card.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/card_event.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/filter_button.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/news_card.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/searchbar.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/slider_home_page.dart';
import 'package:local_art_and_culture/src/feature/product/screens/product_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NewsCard> newsCards = [];

  @override
  void initState() {
    super.initState();
    fetchNewsData();
    GetName(); // Ubah pemanggilan dari fetchData() menjadi fetchNewsData()
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

  String nama = '';
  // ignore: non_constant_identifier_names
  Future<void> GetName() async {
    SharedPreferences name = await SharedPreferences.getInstance();
    setState(() {
      nama = name.getString('nama') ?? 'Sule';
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
                  padding: const EdgeInsets.only(
                    top: 5,
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
                      Row(
                        children: [
                          Expanded(
                            child: CustomContainer(
                              profileImageUrl: 'assets/foto.jpg',
                              greetingText: 'Horas, $nama',
                              locationText: 'Surabaya',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      const Row(
                        children: [
                          Expanded(
                            child: CustomSearchBar(
                              leadingIcon: Icon(Icons.search),
                            ),
                          ),
                          SizedBox(width: 5),
                          FilterButton(),
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
                                    imagePath: 'assets/banner3.png',
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ArticleList()), // Ganti dengan halaman "Event" yang sesuai
                                );
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
                      const SizedBox(
                        child: CardProducts(),
                      ),
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
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ListProductPage()),
                                );
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
                      const SizedBox(
                        child: CardProducts(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: 0,
          onItemTapped: (index) {
            if (index == 1) {
              Navigator.pushNamed(context, '/event');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/product');
            } else if (index == 3) {
              Navigator.pushNamed(context, '/profile');
            }
          },
        ),
      ),
    );
  }
}
