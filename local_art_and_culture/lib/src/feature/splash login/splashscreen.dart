import 'package:flutter/material.dart';
import 'package:local_art_and_culture/constants/color_collections.dart';
import 'package:local_art_and_culture/src/feature/splash%20login/login.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController _pageController = PageController();
  int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
      "assets/pict1.jpg",
      "Mari Jelajahi, Beli dan Rasakan Makna Mendalam dari Komunitas Kami",
      "Temukan dan Rayakan Seni & Budaya Lokal",
    ),
    AllinOnboardModel(
      "assets/pict2.jpg",
      "Temukan, Lihat dan Dukung Seniman Lokal dengan Menjelajahi Koleksi Seni",
      "Jelajahi Karya Seni Lokal yang Menginspirasi",
    ),
    AllinOnboardModel(
      "assets/pict3.png",
      "Jelajahi Beragam Seni Lokal dan Dapatkan Tiket Acara Tanpa Repot",
      "Beli Tiket Seni dan Acara Unik dalam Satu Aplikasi",
    ),
  ];

  void _updateIndexAndText(int newIndex) {
    setState(() {
      currentIndex = newIndex;

      if (currentIndex == allinonboardlist.length - 1) {
        Future.delayed(const Duration(milliseconds: 500), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              _updateIndexAndText(value);
            },
            itemCount: allinonboardlist.length,
            itemBuilder: (context, index) {
              return PageBuilderWidget(
                title: allinonboardlist[currentIndex].titlestr,
                description: allinonboardlist[currentIndex].description,
                imgurl: allinonboardlist[currentIndex].imgStr,
              );
            },
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Text(
              "Skip",
              style: TextStyle(
                color: Color(0xFFF3B502),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Container(
              // Main container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First empty container (width 25%)
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  // Second container with Row (dots in the center, width 50%)
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          allinonboardlist.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                    ),
                  ),
                  // Third container with GestureDetector (forward arrow on the right, width 25%)
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF3653B0),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          if (currentIndex < allinonboardlist.length - 1) {
                            _updateIndexAndText(currentIndex + 1);
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: 51,
                          height: 51,
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot({required int index}) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: currentIndex == index ? 30.0 : 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          color: currentIndex == index
              ? Color.fromRGBO(232, 100, 75, 1)
              : Color.fromRGBO(217, 217, 217, 1),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class PageBuilderWidget extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  PageBuilderWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 162, left: 27, right: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 280,
            height: 280,
            child: Image.asset(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Plus Jakarta Sans Regular',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class AllinOnboardModel {
  String imgStr;
  String description;
  String titlestr;
  AllinOnboardModel(this.imgStr, this.description, this.titlestr);
}
