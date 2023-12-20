import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/chat/home_chat_screen.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/pilihan_tiket.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/bacaselengkapnya.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/bintang_tamu.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/bottomsheet.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/marchandies.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/tiket.dart';
import 'package:local_art_and_culture/src/feature/keranjang/widget/card_event.dart';

class DetailFestival extends StatefulWidget {
  const DetailFestival({super.key});

  @override
  State<DetailFestival> createState() => _DetailFestivalState();
}

class _DetailFestivalState extends State<DetailFestival> {
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
                              image: AssetImage('assets/png/gambar1_21.png'),
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
                              builder: (context) => const HomeScreenFstv()),
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
                  child: Text(
                    "Festival Budaya",
                    style: GoogleFonts.plusJakartaSans(
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
                  child: Text(
                    "Berbayar",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF768DD5),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Jak-Japan Matsuri 2023",
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF1A1A1A),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
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
                Image.asset("assets/png/Logo.png"),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Jak-Japan Projects",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Deskripsi Acara',
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFF1A1A1A),
                            fontSize: 18,
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 29,
                        ),
                        Text(
                          "Jak-Japan Matsuri adalah wadah pertukaran\nyang bertujuan untuk memperdalam saling\npemahaman antara warga Jepang dan\nIndonesia.",
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFF666666),
                            fontSize: 16,
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
                          onTap: () {
                            BacaSelengkapnya(context);
                          },
                          child: Text(
                            "Baca Selengkapnya",
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF627DCF),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        const SizedBox(
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
                        Text(
                          'Gambir Expo - Jiexpo Kemayoran',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color(0xFF0C1226),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 47,
                        ),
                        Text(
                          'Jiexpo Kemayiran, Jl. Benyamin Sueab, 27, Jakarta Utara, \nJakarta, Indonesia',
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFF666666),
                            fontSize: 12,
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
                          child: Text(
                            "Lihat di Google Maps",
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF627DCF),
                              fontSize: 12,
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
                            BottomSheetFstv(context);
                          },
                          child: Text(
                            "Lihat Denah Acara",
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF627DCF),
                              fontSize: 12,
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
                        Image.asset("assets/png/calendar-range.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '18-19 November 2023',
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFF0C1226),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            height: 0,
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
                          width: 24,
                        ),
                        Image.asset("assets/png/access_alarm.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Gambir Expo - Jiexpo Kemayoran',
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFF0C1226),
                            fontSize: 13,
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
            BintangTamu(),
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
                    imagePath: "assets/png/gambar1_3.png",
                    title: "Tickets Jak-japan Matsuri 2023 Day 1",
                    date: "01 - 12 November 2023",
                    harga: "120.000",
                    category: 'Regular Day2',
                  ),
                ],
              ),
            ),

            Divider(
              color: Colors.grey.shade200,
              height: 8,
              thickness: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                Text(
                  'Merchandise',
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF0C1226),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Marchandise(
                    imagePath: "assets/png/mug.png",
                    title: "Mug Jak-Japan Limited \nEdition",
                    harga: "55.000",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Marchandise(
                      imagePath: 'assets/png/masker.png',
                      title: "Masker",
                      harga: "30.000")
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
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeChatScreen()),
                      (route) => false);
                },
                icon: SvgPicture.asset("assets/svg/chat navbar.svg"),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KeranjangEvent()),
                      (route) => false);
                },
                icon: SvgPicture.asset("assets/svg/cart Navbar.svg"),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 209,
                    height: 48,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PilihanTiket()),
                            (route) => false);
                      },
                      // ignore: sort_child_properties_last
                      child: Text(
                        "Beli Tiket",
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3653B0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
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
