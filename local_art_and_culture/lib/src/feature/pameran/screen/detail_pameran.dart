import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/pilihan_tiket.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/bottomsheet.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/marchandies.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/tiket.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama Aplikasi Anda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

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
                        width: 593,
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: ExpandableText(
                            "\tVoice Against Reason adalah sebuah pameran seni yang memperlihatkan karya-karya luar biasa dari 24 perupa yang berasal dari berbagai negara, menciptakan sebuah ruang dialog artistik yang melintasi batas geografis dan budaya. Pameran ini tidak hanya menyajikan karya seni visual, tetapi juga menjadi sebuah platform untuk mengamati suara dan pikiran di balik setiap karya."
                            "Dengan menghadirkan perupa dari Australia, Bangladesh, India, Indonesia, Jepang, Singapura, Taiwan, Thailand, dan Vietnam, pameran ini merangkul keberagaman dan pluralitas ekspresi seni kontemporer di Asia dan Pasifik. Masing-masing seniman membawa perspektif unik mereka sendiri, memberikan nuansa kaya dan kompleksitas dalam merespons isu-isu zaman ini."
                            "Voice Against Reason mengajak penontonnya untuk merenung dan meresapi pesan yang disampaikan oleh setiap karya. Dalam keragaman tema dan gaya, pameran ini menggambarkan suara-suara yang mendesak, memberikan tantangan terhadap pemikiran rasional, dan mendorong refleksi mendalam terhadap realitas kompleks dunia kita."
                            "Pameran ini juga menjadi sebuah wadah bagi kolaborasi lintas-budaya, di mana seniman-seniman dari latar belakang yang berbeda dapat saling berinteraksi dan bertukar ide. Melalui karya-karya mereka, Voice Against Reason membangun jembatan antara berbagai tradisi seni, menciptakan ruang untuk dialog global yang melampaui batasan fisik dan politik."
                            "Tidak hanya sekadar merayakan keindahan visual, pameran ini juga mengajak penontonnya untuk mempertanyakan dan meresapi esensi dari setiap karya. Voice Against Reason tidak hanya menjadi tempat untuk mengeksplorasi berbagai bentuk seni kontemporer, tetapi juga sebuah panggilan untuk mendengarkan dan menghargai beragam suara yang mewarnai dunia seni saat ini."
                            "Dengan melibatkan seniman-seniman dari berbagai negara, Voice Against Reason membuktikan bahwa seni adalah bahasa universal yang dapat menghubungkan kita melewati perbedaan-perbedaan yang mungkin ada. Pameran ini bukan hanya sebuah showcase visual, tetapi juga sebuah perayaan kekayaan budaya dan intelektual yang ada di seluruh kawasan Asia dan Pasifik.",
                            expandText: '\nBaca Selengkapnya',
                            collapseText: '\nSembunyikan',
                            linkColor: Color(0xFF627DCF),
                            // onExpand: () {
                            //   setState(() {
                            //     isExpanded = true;
                            //   });
                            // },
                            // onCollapse: () {
                            //   setState(() {
                            //     isExpanded = false;
                            //   });
                            // },
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        // You can add additional widgets here
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
                    imagePath: "assets/img/Pameran2.png",
                    title: "Museum Macan(Voice Against)",
                    date: "Senin-Jumat\n",
                    harga: "79.000",
                  ),
                  Tiket(
                    imagePath: "assets/img/Pameran2.png",
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
                        padding: EdgeInsets.only(right: 10.0),
                        child: Marchandise(
                          imagePath: "assets/img/Merch1.png",
                          title: "Blom totebag",
                          harga: "170.000",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
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
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Marchandise(
                          imagePath: "assets/img/Merch3.png",
                          title: "Poster By Teratai",
                          harga: "150.000",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
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
                      primary: Color.fromARGB(
                          255, 14, 56, 192), // Ubah warna tombol menjadi biru
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

// class BottomSheetFstv {
// }
