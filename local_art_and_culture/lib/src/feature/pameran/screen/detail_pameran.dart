import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/models/event_model.dart';
import 'package:local_art_and_culture/service/event_service.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/pilihan_tiket.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/bottomsheet.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/marchandies.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/tiket.dart';


class DetailPameran extends StatefulWidget {
  const DetailPameran({super.key});

  @override
  State<DetailPameran> createState() => _DetailPameranState();
}

class _DetailPameranState extends State<DetailPameran> {
  bool isLoved = false;
  late List<EventModel> event = [];

  @override
  void initState() {
    super.initState();
    fetchEvents();
  }

  Future<void> fetchEvents() async {
    try {
      List<EventModel> events = await EventService.fetchEvents();

      setState(() {
        event = events;
      });
      print(events);
    } catch (error) {
      print('Error fetching events: $error');
    }
  }

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
                        width: 593,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            )
                          ],

                          image: const DecorationImage(

                              image: AssetImage('assets/img/orasis.jpg'),

                              //image: AssetImage('assets/img/Pameran2.png'),

                              fit: BoxFit.fill),

                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                'assets/img/orasis.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned.fill(
                              child: Image.asset(
                                'assets/img/orasis.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],

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
                  "Orasist Art Gallery\n\n\n\n",
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
            SizedBox(
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
                          'Deskripsi Acara\n',
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
                    const ExpansionTile(
                      title: Text(
                        "Voice Against Reason adalah sebuah pameran seni yang merangkum suara dan ekspresi tanpa batas dalam dunia seni rupa.  ",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            // Deskripsi tambahan atau informasi lebih lanjut
                            "Pameran ini mengeksplorasi kreativitas dan ekspresi melalui berbagai medium dan gaya, membuka dialog antara ekspresi artistik dan pertimbangan rasional. Dalam pameran ini, seniman-seniman berani menggunakan suara mereka sebagai instrumen utama untuk menyampaikan pesan, membawa pemirsa dalam perjalanan visual yang menggugah dan merangsang pemikiran.\nSetiap karya seni dalam pameran ini memiliki kekuatan untuk menyampaikan narasi yang unik, menciptakan jembatan antara logika dan ketidak-beraturan, menyuarakan perasaan dan pemikiran yang mungkin sulit diungkapkan dengan kata-kata. Suara, entah itu yang terangkum dalam warna-warna cerah, garis-garis lembut, atau tekstur yang menarik, menjadi alat utama bagi seniman untuk mengekspresikan diri mereka tanpa membatasi diri pada norma atau nalar yang konvensional.\nPameran ini mengajak pemirsa untuk meresapi keindahan dan kompleksitas seni yang muncul dari pertentangan antara suara dan akal sehat. Dengan melibatkan berbagai elemen visual, pameran Voice Against Reason membuka ruang bagi interpretasi pribadi dan refleksi, mendorong pengunjung untuk mempertanyakan, merenung, dan menyelami makna di balik karya-karya seni yang dipamerkan.",
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 16,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w400,
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
                    const Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
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
                            "",
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
                            BottomSheetFstv(context);
                          },
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
                      height: 10,
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
                    imagePath: "assets/img/orasis.jpg",
                    title: "Museum Macan(Voice Against)",
                    date: "Senin-Jumat\n",
                    harga: "79.000",
                  ),
                  Tiket(
                    imagePath: "assets/img/orasis.jpg",
                    title: "Museum Macan(Voice Against)",
                    date: "Senin-Jumat\n",
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

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: Text(
                    'Marchandise',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Marchandise(
                          imagePath: "assets/img/Merch1.png",
                          title: "Blom totebag",
                          harga: "170.000",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Marchandise(
                          imagePath: 'assets/img/Merch2.png',
                          title: "Medioker",
                          harga: "200.000",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Marchandise(
                          imagePath: "assets/img/Merch3.png",
                          title: "Poster By Teratai",
                          harga: "150.000",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Marchandise(
                          imagePath: 'assets/img/Merch4.png',
                          title: "Sarung tali Hutan",
                          harga: "475.000",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                              builder: (context) => const PilihanTiket()),
                          (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 14, 56, 192), // Ubah warna tombol menjadi biru
                    ),
                    child: const Text(
                      "Beli Tiket",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
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
