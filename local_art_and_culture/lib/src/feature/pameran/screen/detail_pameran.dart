import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/pilihan_tiket.dart';

import 'package:local_art_and_culture/src/feature/pameran/widget/marchandies.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/tiket.dart';

class DetailPameran extends StatefulWidget {
  const DetailPameran({super.key});

  @override
  State<DetailPameran> createState() => _DetailPameranState();
}

class _DetailPameranState extends State<DetailPameran> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Stack(
                    children: [
                      Container(
                        height: 386,
                        width: 393,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.2), // Warna bayangan
                              spreadRadius: 2, // Radius penyebaran bayangan
                              blurRadius: 5, // Radius blur bayangan
                              offset: const Offset(0, 3),
                            )
                          ],
                          image: const DecorationImage(
                              image: AssetImage('assets/img/Pameran2.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 250,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30, // Sesuaikan posisi ikon secara vertikal
                  left: 324, // Sesuaikan posisi ikon secara horizontal
                  child: IconButton(
                    icon: Icon(
                      isLoved ? Icons.favorite : Icons.favorite_border,
                      color: isLoved ? Colors.red : Colors.white,
                      size: 24,
                    ),
                    onPressed: () {
                      setState(() {
                        isLoved = !isLoved;
                      });
                      // Handle favorite button press
                    },
                  ),
                ),
                Positioned(
                  top: 30, // Sesuaikan posisi ikon secara vertikal
                  left: 26, // Sesuaikan posisi ikon secara horizontal
                  child: IconButton(
                    iconSize: 24,
                    icon: SvgPicture.asset(
                      "assets/svg/arrow_back.svg",
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                          (route) => false);
                      // Handle favorite button press
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 24,
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xFF91A1D3),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Text(
                    "Pameran",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xFFEBEEF9),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Text(
                    "Berbayar",
                    style: TextStyle(
                      color: Color(0xFF768DD5),
                      fontSize: 10,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Orasist Art Gallery",
                  style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 24,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 28,
                ),
                Image.asset("assets/img/Logo.png"),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Museum macan",
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 8,
              thickness: 8,
            ),
            // const SizedBox(
            //   height: 15,
            // ),
            Container(
              height: 363,
              width: 393,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Deskripsi Acara',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 18,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 29,
                        ),
                        Text(
                          "Voice Against Reason adalah pameran besar \nyang melibatkan 24 perupa dari Australia, \nBangladesh, India, Indonesia, Jepang, \nSingapura, Taiwan, Thailand, dan Vietnam.",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 16,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 29,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Baca Selengkapnya",
                            style: TextStyle(
                              color: Color(0xFF627DCF),
                              fontSize: 12,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        const Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Museum Macan',
                          style: TextStyle(
                            color: Color(0xFF0C1226),
                            fontSize: 13,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 47,
                        ),
                        Text(
                          'Jalan Perjuangan, Rt.11/Rw.10, Kebon Jeruk',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 46,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Lihat di Google Maps",
                            style: TextStyle(
                              color: Color(0xFF627DCF),
                              fontSize: 12,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 46,
                        ),
                        GestureDetector(
                          onTap: () {
                            BottomSheetFstv();
                          },
                          child: const Text(
                            "Lihat Denah Acara",
                            style: TextStyle(
                              color: Color(0xFF627DCF),
                              fontSize: 12,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        Image.asset("assets/img/calendar-range.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Weekdays/Weekend',
                          style: TextStyle(
                            color: Color(0xFF0C1226),
                            fontSize: 13,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 8,
              thickness: 8,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Tiket(
                    imagePath: "assets/img/pameran2.png",
                    title: "Museum Macan(Voice Against)",
                    date: "Senin-Jumat",
                    harga: "79.000",
                  ),
                  Tiket(
                    imagePath: "assets/img/pameran2.png",
                    title: "Museum Macan(Voice Against)",
                    date: "Senin-Jumat",
                    harga: "79.000",
                  ),
                ],
              ),
            ),

            Divider(
              color: Colors.grey.shade200,
              height: 8,
              thickness: 8,
            ),

            const Text(
              'Marchandise',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Marchandise(
                    imagePath: "assets/img/merch1.png",
                    title: "Blom totebag",
                    harga: "170.000",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Marchandise(
                      imagePath: 'assets/img/merch2.png',
                      title: "Medioker",
                      harga: "200.000")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Marchandise(
                    imagePath: "assets/img/merch3.png",
                    title: "Poster By Teratai",
                    harga: "150.000",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Marchandise(
                      imagePath: 'assets/img/merch4.png',
                      title: "Sarung tali Hutan",
                      harga: "475.000")
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 8,
              thickness: 8,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/svg/chat navbar.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/svg/cart Navbar.svg"),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PilihanTiket()),
                          (route) => false);
                    },
                    child: Text(
                      "Beli Tiket",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Ubah warna tombol menjadi biru
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetFstv {
}
